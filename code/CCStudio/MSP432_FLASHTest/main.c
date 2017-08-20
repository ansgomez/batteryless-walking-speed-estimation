/******************************************************************************
 * MSP432 printf example project
 *
 * Description: An example project to illustrate printf usage on the MSP432
 * Launchpad.

 * Author: Gerard Sequeira, bluehash@43oh
 *******************************************************************************/

/* DriverLib Includes */
#include <cypress_flash.h>
#include <spiFRAM.h>
#include "driverlib.h"

/* Standard Includes */
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include <serial.h>

#define GPIO_PORT_START_BUTTON		GPIO_PORT_P1
#define GPIO_PIN_START_BUTTON		GPIO_PIN1

int main(void) {

	/* Halting WDT and disabling master interrupts */
	WDTCTL = WDTPW | WDTHOLD;                 // Stop WDT

	SystemInit();
	SystemCoreClockUpdate();

	/* Initialize serial UART */
	Serial_init();

	// configure button S1 input pin
	GPIO_setAsInputPinWithPullUpResistor(GPIO_PORT_START_BUTTON,
	GPIO_PIN_START_BUTTON);

	/* FLASH TEST */
	EXTFLASH_init();
	EXTFLASH_initGPIO();
	EXTFLASH_powerOn();

	// wait for trigger on button input
	while (GPIO_getInputPinValue(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON)
			== GPIO_INPUT_PIN_HIGH) {
		continue;
	}


	// CS low
	GPIO_setOutputLowOnPin(FLASH_PORT_CS, FLASH_PIN_CS);

	/* RESET */
	SPI_transceive(FLASH_SPI_PERIPHERAL, 0xF0);

	// CS high
	GPIO_setOutputHighOnPin(FLASH_PORT_CS, FLASH_PIN_CS);


	// CS low
	GPIO_setOutputLowOnPin(FLASH_PORT_CS, FLASH_PIN_CS);

	/* Read Identification */
	SPI_transceive(FLASH_SPI_PERIPHERAL, 0x9F);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);

	// CS high
	GPIO_setOutputHighOnPin(FLASH_PORT_CS, FLASH_PIN_CS);
	// CS low
	GPIO_setOutputLowOnPin(FLASH_PORT_CS, FLASH_PIN_CS);

	SPI_transceive(FLASH_SPI_PERIPHERAL, 0x05);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);

	// CS high
	GPIO_setOutputHighOnPin(FLASH_PORT_CS, FLASH_PIN_CS);
	// CS low
	GPIO_setOutputLowOnPin(FLASH_PORT_CS, FLASH_PIN_CS);


	SPI_transceive(FLASH_SPI_PERIPHERAL, 0x9F);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);

	// CS high
	GPIO_setOutputHighOnPin(FLASH_PORT_CS, FLASH_PIN_CS);


	uint32_t FLASH_address = 0x00000000;
	uint16_t FLASH_data_length = 16;

	uint8_t databuffer[16] = { 0 };
	uint8_t i;
	Serial_sendString("Write Data into FLASH: ");
	for (i = 0; i < 16; i++) {
		databuffer[i] = i << 2;
		//EXTFLASH_write(FLASH_address++, &databuffer[row], 1);
		//printf("%d ", databuffer[i]);
		Serial_sendChar((char) databuffer[i]);

	}

	EXTFLASH_write(FLASH_address, databuffer, FLASH_data_length);

	for (i = 0; i < 16; i++) {
		databuffer[i] = 0;
	}
	Serial_sendString("\nRead Data from FLASH:  ");

	FLASH_address = 0x00000000;
	FLASH_data_length = 16;
	uint8_t dataread[16] = { 0 };
	//uint16_t temp = 0;
	EXTFLASH_read(FLASH_address, dataread, FLASH_data_length);

	for (i = 0; i < 16; i++) {
		//printf("%d ", dataread[i]);
		Serial_sendChar((char) dataread[i]);
		//EXTFLASH_read(FLASH_address++, &temp, 1);
		//Serial_sendChar((char) (temp & 0xff));
	}


	// CS low
	GPIO_setOutputLowOnPin(FLASH_PORT_CS, FLASH_PIN_CS);


	SPI_transceive(FLASH_SPI_PERIPHERAL, 0x05);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);

	// CS high
	GPIO_setOutputHighOnPin(FLASH_PORT_CS, FLASH_PIN_CS);



	/* END FLASH Test */
}
