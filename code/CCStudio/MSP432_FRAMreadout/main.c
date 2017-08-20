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

#include "cypress_fram.h"

/// Number of images to read out
#define CAPTURE_ITERATIONS 10

/// persistent memory for camera image
#pragma PERSISTENT( image_buffer )
uint16_t image_buffer[112][112] = { 0 };

#define GPIO_PORT_START_BUTTON		GPIO_PORT_P1
#define GPIO_PIN_START_BUTTON		GPIO_PIN1

/// The image size in column direction
#define CAMERA_IMAGE_SIZE_COL 112

/// The image size in row direction
#define CAMERA_IMAGE_SIZE_ROW 112


int main(void) {

	/* Halting WDT and disabling master interrupts */
	WDTCTL = WDTPW | WDTHOLD;                 // Stop WDT

	SystemInit();
	SystemCoreClockUpdate();

	// configure button S1 input pin
	GPIO_setAsInputPinWithPullUpResistor(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON);

	/* Initialize serial UART */
	Serial_init();

	/* Initialize SPI for FRAM */
	EXTFRAM_init();
	EXTFRAM_initGPIO();


	// wait for trigger on button input
	while (GPIO_getInputPinValue(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON) == GPIO_INPUT_PIN_HIGH) {
		continue;
	}

	EXTFRAM_powerOn();

	// endless repeat
	uint8_t img = 0;
	for (img = 0; img < CAPTURE_ITERATIONS; img++) {


		uint32_t FRAM_address = img * CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW * 2;
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
}
