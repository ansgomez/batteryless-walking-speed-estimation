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

#include "camera.h"

#include "image_processing.h"

/// memory for images
uint8_t image_buffer1[NUMPIXELS_Y][NUMPIXELS_X] = { 0 };
uint8_t image_buffer2[NUMPIXELS_Y][NUMPIXELS_X] = { 0 };
/// memory for displacement values
uint8_t dx[NUMBLOCKS_Y][NUMBLOCKS_X] = { 0 };
uint8_t dy[NUMBLOCKS_Y][NUMBLOCKS_X] = { 0 };

#define GPIO_PORT_START_BUTTON		GPIO_PORT_P1
#define GPIO_PIN_START_BUTTON		GPIO_PIN1
#define GPIO_PORT_LED				GPIO_PORT_P1
#define GPIO_PIN_LED					GPIO_PIN0


int main(void) {

	uint8_t row = 0;
	uint8_t col = 0;

	/* Halting WDT and disabling master interrupts */
	WDTCTL = WDTPW | WDTHOLD;                 // Stop WDT

	SystemInit();
	SystemCoreClockUpdate();

	// configure button S1 input pin
	GPIO_setAsInputPinWithPullUpResistor(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON);
	// configure LED
	GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
	GPIO_setAsOutputPin(GPIO_PORT_LED, GPIO_PIN_LED);

	/* Initialize serial UART */
	Serial_init();

	// receive image 1 over serial
	GPIO_setOutputHighOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
	for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
		for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
			image_buffer1[row][col] = UART_receiveData(EUSCI_A0_BASE);
		}
	}
	GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);

	// receive image 2 over serial
	GPIO_setOutputHighOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
	for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
		for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
			image_buffer2[row][col] = UART_receiveData(EUSCI_A0_BASE);
		}
	}
	GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);


	/* Image Processing */
	block_matching(*image_buffer1, *image_buffer2, *dx, *dy);
/*
	// send image 1 over serial
	GPIO_setOutputHighOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
	for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
		for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
			Serial_sendChar((char) image_buffer1[row][col]);
		}
	}
	GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);

	// send image 2 over serial
	GPIO_setOutputHighOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
	for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
		for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
			Serial_sendChar((char) image_buffer2[row][col]);
		}
	}
	GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
*/

	// send image data dx over serial
	GPIO_setOutputHighOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
	for (row = 0; row < NUMBLOCKS_Y; row++) {
		for (col = 0; col < NUMBLOCKS_X; col++) {
			Serial_sendChar((char) dx[row][col]);
		}
	}
	GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);

	// send image data dy over serial
	GPIO_setOutputHighOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
	for (row = 0; row < NUMBLOCKS_Y; row++) {
		for (col = 0; col < NUMBLOCKS_X; col++) {
			Serial_sendChar((char) dy[row][col]);
		}
	}
	GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);

	//Serial_sendChar(0xFF);

	// UART off
	//EUSCI_A_UART_disable(EUSCI_A0_BASE);

	while(1);

}
