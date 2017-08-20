/******************************************************************************
 * MSP432 Ceneye Camera
 *
 * Author: Thomas Schalch, ETHZ, 2016
 *******************************************************************************/

/* DriverLib Includes */
#include "driverlib.h"

/* Standard Includes */
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include <serial.h>

#include "utils/ff.h"
#include "utils/diskio.h"
#include "sd_diskio.h"
#include "sd_cmd.h"

#include "cypress_fram.h"

#include "camera.h"

/// select camera acquisition mode: 0 software based, 1 hardware supported low power method
#define CAMERA_LPM 1

/// select if the camera is turned off between two acquisitions (only makes sense with timed capture)
/// 0: no shutdown, 1: image sensor shutdown, 2: high side MOSFET switch
#define CAMERA_POWERDOWN 0

/// Number of images to capture before entering deep sleep
#define CAPTURE_ITERATIONS 5

/// select if UART is used to send the images (1) or not (0)
#define UART_SEND 0

/// select if images should be stored on SD card (1) or not (0)
#define SDCARD_STORAGE 0

/// select if images should be stored on the FRAM chip (1) or not (0)
#define FRAM_STORAGE 1

/// select if images should be read out of the FRAM chip at the end of the sequence (1) or not (0)
#define FRAM_READOUT 1

/// select if the LED pin should be used to indicate capture (high when active)
#define CAPTURE_INDICATOR 1

/// persistent memory for camera image
#pragma PERSISTENT( image_buffer )
uint16_t image_buffer[112][112] = { 0 };
/// persistent memory for camera image
#pragma PERSISTENT( image_buffer2 )
uint16_t image_buffer2[112][112] = { 0 };
/// persistent memory for camera image
#pragma PERSISTENT( image_buffer3 )
uint16_t image_buffer3[112][112] = { 0 };
/// persistent memory for camera image
#pragma PERSISTENT( image_buffer4 )
uint16_t image_buffer4[112][112] = { 0 };
/// persistent memory for camera image
#pragma PERSISTENT( image_buffer5 )
uint16_t image_buffer5[112][112] = { 0 };
/// persistent memory for camera image
#pragma PERSISTENT( image_buffer6 )
uint16_t image_buffer6[112][112] = { 0 };
/// persistent memory for camera image
#pragma PERSISTENT( image_buffer7 )
uint16_t image_buffer7[112][112] = { 0 };

#define GPIO_PORT_START_BUTTON		GPIO_PORT_P1
#define GPIO_PIN_START_BUTTON		GPIO_PIN1
#define GPIO_PORT_LED				GPIO_PORT_P1
#define GPIO_PIN_LED					GPIO_PIN0

// SD Card Test: Command Ready
uint8_t gucCommandReady = 0;



/* DMA Control Table */
//#ifdef ewarm
//#pragma data_alignment=256
//#else
//#pragma DATA_ALIGN(controlTable, 256)
//#endif
//uint8_t controlTable[256];


/*
 * USCIA0 interrupt handler.
 */
void EusciA0_ISR(void) {
	int16_t receiveByte = UCA0RXBUF;
	static uint32_t ui32Count = 0;
	static int8_t bLastWasCR = 0;

	// See if the backspace key was pressed.
	if (receiveByte == '\b') {
		// If there are any characters already in the buffer, then delete
		// the last.
		if (ui32Count) {
			// Rub out the previous character.
			printf("\b");

			// Decrement the number of characters in the buffer.
			ui32Count--;
		}
	}

	// If this character is LF and last was CR, then just gobble up the
	// character because the EOL processing was taken care of with the CR.
	if ((receiveByte == '\n') && bLastWasCR) {
		//   bLastWasCR = 0;
	}

	// See if a newline or escape character was received.
	if ((receiveByte == '\r') || (receiveByte == '\n')
			|| (receiveByte == 0x1b)) {
		// If the character is a CR, then it may be followed by a LF which
		// should be paired with the CR.  So remember that a CR was
		// received.
		if (receiveByte == '\r') {
			//	bLastWasCR = 1;
		}

		// Reset the count.
		ui32Count = 0;

		gucCommandReady = 1;
		// Stop processing the input and end the line.
		return;
	}

	// Process the received character as long as we are not at the end of
	// the buffer.  If the end of the buffer has been reached then all
	// additional characters are ignored until a newline is received.
	if (ui32Count < sizeof(g_pcCmdBuf)) {
		// Store the character in the caller supplied buffer.
		g_pcCmdBuf[ui32Count] = receiveByte;

		// Increment the count of characters received.
		ui32Count++;

		/* Echo the character back. */
		EUSCI_A_UART_transmitData(EUSCI_A0_BASE, receiveByte);
	}
}


int main(void) {

    uint16_t bw;       /* Bytes written */
	FRESULT iFResult;

	/* Halting WDT and disabling master interrupts */
	WDTCTL = WDTPW | WDTHOLD;                 // Stop WDT

	SystemInit();
	SystemCoreClockUpdate();

	// configure button S1 input pin
	GPIO_setAsInputPinWithPullUpResistor(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON);

#if CAPTURE_INDICATOR > 0
	// configure LED
	GPIO_setAsOutputPin(GPIO_PORT_LED, GPIO_PIN_LED);
#endif

#if UART_SEND > 0
	/* Initialize serial UART */
	Serial_init();
#endif

#if SDCARD_STORAGE > 0
	/* Initialize SPI for SD card */
	Serial_init();
	SDcard_SPI_init();
#endif

#if FRAM_STORAGE > 0
	/* Initialize SPI for FRAM */
	Serial_init();
	EXTFRAM_init();
	EXTFRAM_initGPIO();
#endif

	// setup camera (GPIO/Timers/ADC)
	Camera_init();

#if CAMERA_POWERDOWN < 2
	// power up peripherals
	Camera_enable();

	// configure devices
	Camera_configure(CAMERA_NBIAS, CAMERA_AOBIAS, CAMERA_GAIN, CAMERA_VREF);

# if CAMERA_POWERDOWN > 0
	Camera_turnPowerOff();
# endif
#endif

# if CAMERA_POWERDOWN > 0
	ADC14->CTL0 &= ~(ADC14_CTL0_ON);
	//ADC_turnReferenceOff();
#endif

	// wait for trigger on button input
	while (GPIO_getInputPinValue(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON) == GPIO_INPUT_PIN_HIGH) {
		continue;
	}

	// endless repeat
	uint8_t img = 0;
	for (img = 0; img < CAPTURE_ITERATIONS; img++) {

#if CAPTURE_INDICATOR > 0
		GPIO_setOutputHighOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
#endif

	// Start Camera Operation
#if CAMERA_POWERDOWN == 1
		// TODO recativate ADC??
		//ADC_turnReferenceOn();
		Camera_turnPowerOn(CAMERA_GAIN);
#endif
#if CAMERA_POWERDOWN == 2
		Camera_enable();
		Camera_configure(CAMERA_NBIAS, CAMERA_AOBIAS, CAMERA_GAIN, CAMERA_VREF);
#endif

#if CAMERA_LPM > 0

		// start low power image aquisition
		Camera_startAquire(*image_buffer);

		while(Camera_isBusy()) {
			continue;
		}

#else
		// acquire an image from the sensor
		Camera_readImage(*image_buffer);
#endif

#if CAMERA_POWERDOWN == 1
		Camera_turnPowerOff();
		//ADC_turnReferenceOff();
#elif CAMERA_POWERDOWN == 2
		Camera_disable();
#endif

#if CAPTURE_INDICATOR > 0
		GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
#endif

#if UART_SEND > 0
		// send image over serial
		uint8_t row = 0;
		uint8_t col = 0;
		for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
			for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
				// higher 4 bits
				Serial_sendChar((char) (image_buffer[row][col] >> 8));

				// lower 8 bits
				Serial_sendChar((char) (image_buffer[row][col] & 0xff));
			}
		}
#endif

#if FRAM_STORAGE > 0
		EXTFRAM_powerOn();

		uint32_t FRAM_address = img * CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW * 2;
		uint16_t FRAM_data_length = CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW * 2;

		EXTFRAM_write(FRAM_address, image_buffer, FRAM_data_length);

		//printf("Image %d acquired\n", img);

		EXTFRAM_powerOff();
#endif

#if SDCARD_STORAGE > 0

		    //printf("SMCLK for Acquisition: %d", CS_getSMCLK());

			//CS_setDCOCenteredFrequency(CS_DCO_FREQUENCY_3);

			printf("SMCLK for Writing: %d", CS_getSMCLK());

		    /* Register work area (do not care about error) */
			iFResult = f_mount(0, &g_sFatFs);
			if (iFResult != FR_OK) {
				printf("f_mount error: %s\n", StringFromFResult(iFResult));
			}

			if (f_open(&g_sFileObject, "newfile.txt", FA_WRITE | FA_CREATE_ALWAYS) == FR_OK) {	/* Create a file */

				f_write(&g_sFileObject, "It works!\r\n", 11, &bw);	/* Write data to the file */

				f_close(&g_sFileObject);								/* Close the file */

				if (bw == 11) {		/* Lights green LED if data written well */
					printf("YESS!");
				} else {
					printf("Leider nein");
				}
			}


			if (f_open(&g_sFileObject, "testimg.txt", FA_WRITE | FA_CREATE_ALWAYS) == FR_OK) {	/* Create a file */

				f_write(&g_sFileObject, image_buffer, CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW, &bw);	/* Write data to the file */

				f_close(&g_sFileObject);								/* Close the file */

				if (bw == CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW) {		/* Lights green LED if data written well */
					printf("%d written\n", img);
				} else {
					printf("writing error\n");
				}
			} else {
				printf("fopen failed\n");
			}


		    /* Unregister work area */
		    //f_mount(0, &g_sFatFs);


		    printf("SMCLK for Writing: %d", CS_getSMCLK());
			//CS_setDCOCenteredFrequency(CS_DCO_FREQUENCY_24);
		    //printf("SMCLK for Acquisition: %d", CS_getSMCLK());

#endif
	}

	// turn camera off
	Camera_turnPowerOff();
//	Camera_disable();

	// ADC off
	ADC14->CTL0 = 0;


#if FRAM_READOUT > 0

	// wait for trigger on button input
	while (GPIO_getInputPinValue(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON) == GPIO_INPUT_PIN_HIGH) {
		continue;
	}

			EXTFRAM_powerOn();

			// endless repeat
			uint8_t imgit = 0;
			for (imgit = 0; imgit < CAPTURE_ITERATIONS; imgit++) {


				uint32_t FRAM_address = imgit * CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW * 2;
				uint16_t FRAM_data_length = CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW * 2;

				EXTFRAM_read(FRAM_address, image_buffer, FRAM_data_length);

				// send image over serial
				uint8_t row = 0;
				uint8_t col = 0;
				for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
					for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
						// higher 4 bits
						Serial_sendChar((char) (image_buffer[row][col] >> 8));

						// lower 8 bits
						Serial_sendChar((char) (image_buffer[row][col] & 0xff));
					}
				}

			}

			EXTFRAM_powerOff();
#endif

#if UART_SEND > 0
	// UART off
	EUSCI_A_UART_disable(EUSCI_A0_BASE);
#endif

}
