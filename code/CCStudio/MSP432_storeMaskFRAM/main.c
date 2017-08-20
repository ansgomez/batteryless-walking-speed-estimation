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

/// The image size in column direction
#define CAMERA_IMAGE_SIZE_COL 112
/// The image size in row direction
#define CAMERA_IMAGE_SIZE_ROW 112
/// The address of the mask in the FRAM
#define MASK_ADDRESS 0x00000000

/// memory for camera image
uint8_t image_buffer[CAMERA_IMAGE_SIZE_ROW][CAMERA_IMAGE_SIZE_COL] = { 0 };

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

	// configure LED
	GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
	GPIO_setAsOutputPin(GPIO_PORT_LED, GPIO_PIN_LED);

	/* Initialize serial UART */
	Serial_init();

	/* Initialize SPI for FRAM */
	EXTFRAM_init();
	EXTFRAM_powerOn();

	// receive mask over serial
	GPIO_setOutputHighOnPin(GPIO_PORT_LED, GPIO_PIN_LED);
	uint8_t row = 0;
	uint8_t col = 0;
	for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
		for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
			image_buffer[row][col] = UART_receiveData(EUSCI_A0_BASE);
		}
	}
	GPIO_setOutputLowOnPin(GPIO_PORT_LED, GPIO_PIN_LED);

	// search maximal value in mask
	uint8_t maxvalue = 0;
	for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
		for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
			if ( image_buffer[row][col] > maxvalue ) {
				maxvalue = image_buffer[row][col];
			}
		}
	}

	// substract maximal value from each pixel in mask
	for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
		for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
			image_buffer[row][col] -= maxvalue;
		}
	}

	// store mask in FRAM
	uint32_t FRAM_address = MASK_ADDRESS;
	uint16_t FRAM_data_length = CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW;
	EXTFRAM_write(FRAM_address, image_buffer, FRAM_data_length);
	EXTFRAM_powerOff();

	// UART off
	EUSCI_A_UART_disable(EUSCI_A0_BASE);

	while(1);

}
