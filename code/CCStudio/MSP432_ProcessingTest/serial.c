/*
 * serial.c
 *
 *  Created on: 14.03.2016
 *      Author: thomas
 */


#include <string.h>
#include "driverlib.h"

#include "serial.h"

/**
 * Initialize the serial with standard settings.
 */
void Serial_init(void) {

	/* Selecting P1.2 and P1.3 in UART mode. */
	MAP_GPIO_setAsPeripheralModuleFunctionInputPin(GPIO_PORT_P1, GPIO_PIN2 | GPIO_PIN3, GPIO_PRIMARY_MODULE_FUNCTION);

	/* UART Configuration Parameter. These are the configuration parameters to
	 * make the eUSCI A UART module to operate with a 115200 baud rate. These
	 * values were calculated using the online calculator that TI provides
	 * at:
	 * http://processors.wiki.ti.com/index.php/
	 *               USCI_UART_Baud_Rate_Gen_Mode_Selection
	 */
	const eUSCI_UART_Config uartConfig = {
			SERIAL_CLOCK_SOURCE,          			// SMCLK Clock Source (e.g. 12000000)
			SERIAL_PRESCALER,                        // BRDIV = 104
			SERIAL_UCxBRF,                           // UCxBRF = 0
			SERIAL_UCxBRS,                           // UCxBRS = 1
			EUSCI_A_UART_NO_PARITY,                  // No Parity
			EUSCI_A_UART_LSB_FIRST,                  // MSB First
			EUSCI_A_UART_ONE_STOP_BIT,               // One stop bit
			EUSCI_A_UART_MODE,                       // UART mode
			SERIAL_MODE						 	    // Low Frequency Mode
			};

	/* Configuring UART Module */
	MAP_UART_initModule(EUSCI_A0_BASE, &uartConfig);

	/* Enable UART module */
	MAP_UART_enableModule(EUSCI_A0_BASE);

	/*
	UART_enableInterrupt(EUSCI_A0_BASE, EUSCI_A_UART_RECEIVE_INTERRUPT);
	Interrupt_enableInterrupt(INT_EUSCIA0);
	Interrupt_enableMaster();
	*/
}

/**
 * Send a character over the serial.
 * @param c The character to send
 */
void Serial_sendChar(char c) {
	while (!EUSCI_A_UART_getInterruptStatus(EUSCI_A0_BASE,
			EUSCI_A_UART_TRANSMIT_INTERRUPT_FLAG)) {
		continue;
	}

	EUSCI_A_UART_transmitData(EUSCI_A0_BASE, (uint8_t) c);
}

/**
 * Send a string over the serial.
 * @param str The string to send
 */
void Serial_sendString(char* str) {
	unsigned int len = strlen(str);
	unsigned int i = 0;

	for (i = 0; i < len; i++ ) {
		Serial_sendChar(str[i]);
	}
}

