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

#include "cypress_fram.h"

#include "camera.h"

#include "main.h"

#include "image_processing.h"

/// select if the camera is turned off between two acquisitions (only makes sense with timed capture)
/// 0: no shutdown, 1: image sensor shutdown, 2: high side MOSFET switch
#define CAMERA_POWERDOWN 1

/// Number of images to capture before entering deep sleep
#define CAPTURE_ITERATIONS 10

/// select if the images AND the optical flow field is stored/sent (1) or only the optical flow field (0)
#define STORE_IMAGES 1

/// select if UART is used to send the images and the displacement estimations (1) or not (0)
#define UART_SEND 1

/// select if images should be stored on SD card (1) or not (0)
#define SDCARD_STORAGE 0

/// select if the data should be stored on the FRAM chip (1) or not (0)
#define FRAM_STORAGE 0
#define FRAM_DATA_ADDRESS 		0x00003100
/// define the address of the mask in the FRAM chip
#define FRAM_MASK_ADDRESS 		0x00000000

/// select if data should be read out of the FRAM chip at the end of the sequence (1) or not (0)
#define FRAM_READOUT 0

/// select if the LED pin should be used to indicate capture (high when active)
#define CAPTURE_INDICATOR 1

/// memory for camera image 1
uint8_t image_buffer1[112][112] = { 0 };
/// memory for camera image 2
uint8_t image_buffer2[112][112] = { 0 };
/// memory for mask
uint8_t mask_buffer[112][112] = { 0 };

/// memory for displacement values
int8_t dx[NUMBLOCKS_Y][NUMBLOCKS_X] = { 0 };
int8_t dy[NUMBLOCKS_Y][NUMBLOCKS_X] = { 0 };

#define GPIO_PORT_START_BUTTON		GPIO_PORT_P1
#define GPIO_PIN_START_BUTTON		GPIO_PIN1
#define GPIO_PORT_LED				GPIO_PORT_P1
#define GPIO_PIN_LED					GPIO_PIN0


int main(void) {

	/* Halting WDT and disabling master interrupts */
	WDTCTL = WDTPW | WDTHOLD;                 // Stop WDT

	SystemInit();
	SystemCoreClockUpdate();

	// configure button S1 input pin
	GPIO_setAsInputPinWithPullUpResistor(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON);

#if CAPTURE_INDICATOR > 0
	// configure LED
	GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
	GPIO_setAsOutputPin(GPIO_PORT_LED, GPIO_PIN_LED);
#endif

#if UART_SEND > 0
	/* Initialize serial UART */
	Serial_init();
#endif

#if SDCARD_STORAGE > 0
    UINT bw;       /* Bytes written */
	FRESULT iFResult;

	/* Initialize SPI for SD card */
	Serial_init();
	SDcard_SPI_init();
#endif

#if FRAM_STORAGE > 0
 #if UART_SEND == 0
	/* Initialize serial UART */
	Serial_init();
 #endif
	/* Initialize SPI for FRAM */
	EXTFRAM_init();
	EXTFRAM_powerOn();
#endif

#if CAMERA_MASK_PROCESSING > 0
	// Read mask from FRAM
	#if FRAM_STORAGE == 0
		EXTFRAM_init();
		EXTFRAM_powerOn();
	#endif
	uint32_t FRAM_address = FRAM_MASK_ADDRESS;
	uint16_t FRAM_data_length = CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW;
	EXTFRAM_read(FRAM_address, mask_buffer, FRAM_data_length);
	Camera_defineMask(*mask_buffer);
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

	// wait for trigger on button input
	while (GPIO_getInputPinValue(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON) == GPIO_INPUT_PIN_HIGH) {
		continue;
	}

	// repeat over given number of iterations
	uint32_t iteration = 0;
	for (iteration = 0; iteration < CAPTURE_ITERATIONS; iteration++) {

#if CAPTURE_INDICATOR > 0
		GPIO_setOutputHighOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
#endif

	// Start Camera Operation
#if CAMERA_POWERDOWN == 1
		Camera_turnPowerOn(CAMERA_GAIN);
#endif
#if CAMERA_POWERDOWN == 2
		Camera_enable();
		Camera_configure(CAMERA_NBIAS, CAMERA_AOBIAS, CAMERA_GAIN, CAMERA_VREF);
#endif


		// start low power image aquisition
		Camera_startAquire(*image_buffer1);
#if CAPTURE_INDICATOR > 0
		GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
#endif
		while(Camera_isBusy());
#if CAPTURE_INDICATOR > 0
		GPIO_setOutputHighOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
#endif
		Camera_startAquire(*image_buffer2);
#if CAPTURE_INDICATOR > 0
		GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
#endif
		while(Camera_isBusy());

#if CAMERA_POWERDOWN == 1
		Camera_turnPowerOff();
#elif CAMERA_POWERDOWN == 2
		Camera_disable();
#endif

#if CAPTURE_INDICATOR > 0
		GPIO_setOutputHighOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
#endif
		// image processing
		block_matching(*image_buffer1, *image_buffer2, &dx, &dy);
#if CAPTURE_INDICATOR > 0
		GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
#endif

#if UART_SEND > 0
		uint8_t row = 0;
		uint8_t col = 0;

 #if STORE_IMAGES == 1
		// send images over serial
		for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
			for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
				Serial_sendChar((char) image_buffer1[row][col]);
			}
		}
		for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
			for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
				Serial_sendChar((char) image_buffer2[row][col]);
			}
		}
 #endif
		for (row = 0; row < NUMBLOCKS_Y; row++) {
			for (col = 0; col < NUMBLOCKS_X; col++) {
				Serial_sendChar((char) dx[row][col]);
			}
		}
		for (row = 0; row < NUMBLOCKS_Y; row++) {
			for (col = 0; col < NUMBLOCKS_X; col++) {
				Serial_sendChar((char) dy[row][col]);
			}
		}
#endif
#if FRAM_STORAGE > 0

 #if STORE_IMAGES == 1
		uint32_t FRAM_address = FRAM_DATA_ADDRESS + (iteration * (2*CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL + 2*NUMBLOCKS_X*NUMBLOCKS_Y));

		EXTFRAM_write(FRAM_address, &image_buffer1, CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL);
		FRAM_address += CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL;
		EXTFRAM_write(FRAM_address, &image_buffer2, CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL);
		FRAM_address += CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL;
 #else
		uint32_t FRAM_address = FRAM_DATA_ADDRESS + (iteration * (2*NUMBLOCKS_X*NUMBLOCKS_Y));
 #endif
		EXTFRAM_write(FRAM_address, &dx, NUMBLOCKS_X*NUMBLOCKS_Y);
		FRAM_address += NUMBLOCKS_X*NUMBLOCKS_Y;
		EXTFRAM_write(FRAM_address, &dy, NUMBLOCKS_X*NUMBLOCKS_Y);
#endif

#if SDCARD_STORAGE > 0

		char filename[17];

		SDcard_enable();

		iFResult = f_mount(0, &g_sFatFs);
		if (iFResult != FR_OK) {
			//printf("f_mount error: %s\n", StringFromFResult(iFResult));
			Serial_sendString("f_mount error");
		}
 #if STORE_IMAGES == 1
		// Filename for images: number of image
		if (f_open(&g_sFileObject, itoa((iteration<<1), filename, 10), FA_WRITE | FA_CREATE_ALWAYS) == FR_OK) {	/* Create a file */
			f_write(&g_sFileObject, image_buffer1, CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW, &bw);	/* Write data to the file */
			f_close(&g_sFileObject);								/* Close the file */
			if (bw != CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW) {		/* Lights green LED if data written well */
				Serial_sendString("SDcard writing error\n");
			}
		} else {
			Serial_sendString("f_open failed\n");
		}

		if (f_open(&g_sFileObject, itoa((iteration<<1)+1, filename, 10), FA_WRITE | FA_CREATE_ALWAYS) == FR_OK) {	/* Create a file */
			f_write(&g_sFileObject, image_buffer2, CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW, &bw);	/* Write data to the file */
			f_close(&g_sFileObject);								/* Close the file */
			if (bw != CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW) {		/* Lights green LED if data written well */
				Serial_sendString("SDcard writing error\n");
			}
		} else {
			Serial_sendString("f_open failed\n");
		}

 #endif
		// Filename for displacements: number of image + 10'000
		if (f_open(&g_sFileObject, itoa((iteration<<1)+10000, filename, 10), FA_WRITE | FA_CREATE_ALWAYS) == FR_OK) {	/* Create a file */
			f_write(&g_sFileObject, dx, NUMBLOCKS_X*NUMBLOCKS_Y, &bw);	/* Write data to the file */
			f_close(&g_sFileObject);								/* Close the file */
			if (bw != NUMBLOCKS_X*NUMBLOCKS_Y) {		/* Lights green LED if data written well */
				Serial_sendString("SDcard writing error\n");
			}
		} else {
			Serial_sendString("f_open failed\n");
		}
		if (f_open(&g_sFileObject, itoa((iteration<<1)+10001, filename, 10), FA_WRITE | FA_CREATE_ALWAYS) == FR_OK) {	/* Create a file */
			f_write(&g_sFileObject, dy, NUMBLOCKS_X*NUMBLOCKS_Y, &bw);	/* Write data to the file */
			f_close(&g_sFileObject);								/* Close the file */
			if (bw != NUMBLOCKS_X*NUMBLOCKS_Y) {		/* Lights green LED if data written well */
				Serial_sendString("SDcard writing error\n");
			}
		} else {
			Serial_sendString("f_open failed\n");
		}

		/* Unregister work area */
		f_mount(0, &g_sFatFs);

		SDcard_disable();
#endif


	}

#if FRAM_STORAGE > 0
	EXTFRAM_powerOff();
#endif

	// turn camera off
	Camera_turnPowerOff();
//	Camera_disable();

	// ADC off
	ADC14->CTL0 = 0;


#if FRAM_READOUT > 0

	// wait for trigger on button input
	//while (GPIO_getInputPinValue(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON) == GPIO_INPUT_PIN_HIGH) {
	//	continue;
	//}

			EXTFRAM_powerOn();

			// endless repeat
			uint32_t imgit = 0;
			int8_t temp[2] = 0;
			for (imgit = 0; imgit < CAPTURE_ITERATIONS; imgit++) {


				uint32_t FRAM_address =  FRAM_DATA_ADDRESS + (imgit * 2);
				uint16_t FRAM_data_length = 2;
				EXTFRAM_read(FRAM_address, temp, FRAM_data_length);

				// send image over serial
						Serial_sendChar((char) temp[0]);
						Serial_sendChar((char) temp[1]);
			}

			EXTFRAM_powerOff();
#endif

#if UART_SEND > 0
	// UART off
	while (!EUSCI_A_UART_getInterruptStatus(EUSCI_A0_BASE, EUSCI_A_UART_RECEIVE_INTERRUPT_FLAG));
	EUSCI_A_UART_disable(EUSCI_A0_BASE);
#endif

	while(1);
}


/*
 * Converts integer to string
 */
char *itoa(int num, char *str, int radix) {
	char sign = 0;
	char temp[17];  //an int can only be 16 bits long
					//at radix 2 (binary) the string
					//is at most 16 + 1 null long.
	int temp_loc = 0;
	int digit;
	int str_loc = 0;

	//save sign for radix 10 conversion
	if (radix == 10 && num < 0) {
		sign = 1;
		num = -num;
	}

	//construct a backward string of the number.
	do {
		digit = (unsigned int)num % radix;
		if (digit < 10)
			temp[temp_loc++] = digit + '0';
		else
			temp[temp_loc++] = digit - 10 + 'A';
		num = (((unsigned int)num) / radix);
	} while ((unsigned int)num > 0);

	//now add the sign for radix 10
	if (radix == 10 && sign) {
		temp[temp_loc] = '-';
	} else {
		temp_loc--;
	}


	//now reverse the string.
	while ( temp_loc >=0 ) {// while there are still chars
		str[str_loc++] = temp[temp_loc--];
	}
	str[str_loc] = 0; // add null termination.

	return str;
}
