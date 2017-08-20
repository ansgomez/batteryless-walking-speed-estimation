#include <stdio.h>

#include "driverlib.h"

#include "adc.h"
#include "camera.h"
#include "clock.h"
#include "gpio.h"
#include "serial.h"
#include "timer.h"
#include "watchdog.h"

#include "sd_diskio.h"

/// select camera acquisition mode: 0 software based, 1 hardware supported low power method
#define CAMERA_LPM 1

/// select if the camera is turned off between two acquisitions (only makes sense with timed capture)
/// 0: no shutdown, 1: image sensor shutdown, 2: high side MOSFET switch
#define CAMERA_POWERDOWN 1

/// Number of images to capture before entering deep sleep
#define CAPTURE_ITERATIONS 5

/// select if UART is used to send the images (1) or not (0)
#define UART_SEND 0

/// select if images should be stored on SD card (1) or not (0)
#define SDCARD_STORAGE 1

/// select if the capture should be time triggered (0 no, else set to period in ms < 65000)
#define TIMED_CAPTURE 0

/// select if the LED should be used to indicate capture (off during capture)
#define LED_INDICATOR 1

/// select if a GPIO pin should be used to indicate capture (high when active)
#define CAPTURE_INDICATOR 0

/// persistent memory for camera image
#pragma PERSISTENT( image_buffer )
uint8_t image_buffer[112][112] = { 0 };

/// persistent memory for camera image
#pragma PERSISTENT( image_test )
uint8_t image_test[CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW] = { 0 };


/**
 * Main program
 * @return Exit code
 */
int main(void) {
	// initialize the watch dog timer
	Watchdog_init();

	// (setup power management and supervisors)

	// setup the GPIO pins
	GPIO_reset();
	GPIO_init();
	// initialize the system clocks
	Clock_init();

	// setup other peripherals if needed
	Camera_init();

#if TIMED_CAPTURE > 0
	TimerA3_init(TIMED_CAPTURE);
#endif
#if UART_SEND > 0
	Serial_init();
#endif

#if SDCARD_STORAGE > 0
    UINT bw;       /* Bytes written */
	FRESULT iFResult;

	/* Initialize SPI for SD card */
	Serial_init();
	SDcard_SPI_init();

	SDcard_enable();

	Serial_sendString("Hello World!\n");

	iFResult = f_mount(0, &g_sFatFs);
	if (iFResult != FR_OK) {
		//printf("f_mount error: %s\n", StringFromFResult(iFResult));
		Serial_sendString("f_mount error");
	}

	if (f_open(&g_sFileObject, "images.bin", FA_WRITE | FA_CREATE_ALWAYS) != FR_OK) {	/* Create a file */
		Serial_sendString("f_open failed\n");
	}
#endif


#if LED_INDICATOR > 0
		GPIO_setOutputHighOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);
#endif

#if CAMERA_POWERDOWN < 2

	// power up peripherals
	Camera_enable();

	// configure devices
	Camera_configure(CAMERA_NBIAS, CAMERA_AOBIAS, CAMERA_GAIN, CAMERA_VREF);

# if CAMERA_POWERDOWN > 0
	Camera_turnPowerOff();
# endif
#endif
	// enable interrupts
	__bis_SR_register(GIE);

	Camera_setupADC();

# if CAMERA_POWERDOWN > 0
	ADC12CTL0 &= ~(ADC12ON);
	ADC_turnReferenceOff();
#endif

	// wait for trigger on button input
	while (GPIO_getInputPinValue(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON)
			== GPIO_INPUT_PIN_HIGH) {
		continue;
	}

	for (uint8_t img = 0; img < CAPTURE_ITERATIONS; img++) {
#if TIMED_CAPTURE > 0
		// enter LPM3, wait for interrupt
		__bis_SR_register(LPM3_bits | GIE);
#else
		// delay some time
		__delay_cycles(50);		// 1000000
#endif

//#if UART_SEND > 0
//		EUSCI_A_UART_disable(EUSCI_A0_BASE);
//#endif

#if LED_INDICATOR > 0
		GPIO_setOutputLowOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);
#endif
#if CAPTURE_INDICATOR > 0
		GPIO_setOutputHighOnPin(GPIO_PORT_CAPUTRE_INDICATOR,
				GPIO_PIN_CAPUTRE_INDICATOR);
#endif

#if CAMERA_POWERDOWN == 1
		ADC_turnReferenceOn();
		Camera_turnPowerOn(CAMERA_GAIN);
#endif

#if CAMERA_POWERDOWN == 2
		Camera_enable();
		Camera_configure(CAMERA_NBIAS, CAMERA_AOBIAS, CAMERA_GAIN, CAMERA_VREF);
#endif

#if CAMERA_LPM > 0
		// start low power image aquisition and enter low power mode
		Camera_startAquire(*image_buffer);

		__bis_SR_register(LPM0_bits | GIE);

		// disable DMA transfer
		DMA1CTL &= ~(DMAEN);
#else
		// acquire an image from the sensor
		Camera_readImage(*image_buffer);
#endif

#if CAMERA_POWERDOWN == 1
		Camera_turnPowerOff();
		ADC_turnReferenceOff();
#elif CAMERA_POWERDOWN == 2
		Camera_disable();
#endif

#if CAPTURE_INDICATOR > 0
		GPIO_setOutputLowOnPin(GPIO_PORT_CAPUTRE_INDICATOR,
				GPIO_PIN_CAPUTRE_INDICATOR);
#endif
#if LED_INDICATOR > 0
		GPIO_setOutputHighOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);
#endif

#if UART_SEND > 0
		// send image over serial
		for (uint8_t row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
			for (uint8_t col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
				// higher 4 bits
				Serial_sendChar((char) (image_buffer[row][col] >> 8));

				// lower 8 bits
				Serial_sendChar((char) (image_buffer[row][col] & 0xff));
			}
		}
#endif

#if SDCARD_STORAGE > 0

		/* Write data to the file */

		for (uint16_t row = 0; row < CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW; row++) {
			image_test[row] = row;
		}

		if (f_write(&g_sFileObject, image_test, CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW, &bw) != FR_OK) {	/* Create a file */
			Serial_sendString("f_write failed\n");
			break;
		}

		/* WRITE RAW BLOCKS SD CARD TEST

		// send data over serial
		Serial_sendString("written:\n");
		for (uint16_t row = 0; row < 512; row++) {
			image_test[row] = row;
			Serial_sendChar((char) image_test[row]);
		}
		disk_write(0, image_test, 0, 2);


		Serial_sendString("\n\n overwrite:\n");

		for (uint16_t row = 0; row < 512; row++) {
			image_test[row] = 0;
			Serial_sendChar((char) image_test[row]);
		}

		Serial_sendString("\n\n read: \n");
		disk_read(0, image_test, 0, 2);

		for (uint16_t row = 0; row < 512; row++) {
			Serial_sendChar((char) image_test[row]);
		}
*/

		// Wait until the power consumption of the SD card settled down, because ripples in the power supply desturb the image...
		uint32_t n = 3000;
		while (n) {
			__delay_cycles(48);
			n--;
		}

		if (GPIO_getInputPinValue(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON) == GPIO_INPUT_PIN_LOW && img > 20) {
			break;
		}
#endif

	} // end multiple images

	// turn camera off
	Camera_turnPowerOff();
//	Camera_disable();

	// ADC off
	ADC12CTL0 = 0;

#if UART_SEND > 0
	// UART off
	EUSCI_A_UART_disable(EUSCI_A0_BASE);
#endif

#if  SDCARD_STORAGE > 0
	if (f_close(&g_sFileObject) != FR_OK) {	/* Create a file */
		Serial_sendString("f_close failed\n");
	}

	/* Unregister work area */
	f_mount(0, &g_sFatFs);

	SDcard_disable();
#endif

#if TIMED_CAPTURE > 0
	// disable timer
	TimerA3_stop();
#endif

	__bis_SR_register(LPM4_bits | GIE);
}
