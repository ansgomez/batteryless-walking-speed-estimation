#include <string.h>

#include "driverlib.h"

#include "serial.h"

/**
 * Initialize the serial with standard settings.
 */
void Serial_init(void) {
	// configure UART pins
	GPIO_setAsPeripheralModuleFunctionInputPin( GPIO_PORT_P2,
	GPIO_PIN0 | GPIO_PIN1, GPIO_SECONDARY_MODULE_FUNCTION);

	EUSCI_A_UART_initParam uart_init_struct;
	uart_init_struct.selectClockSource = SERIAL_CLOCK_SOURCE;
	uart_init_struct.clockPrescalar = SERIAL_PRESCALER;
	uart_init_struct.firstModReg = SERIAL_FIRST_MODULATION;	// clock modulator 1 for oversampling
	uart_init_struct.secondModReg = SERIAL_SECOND_MODULATION;// clock modulator 2
	uart_init_struct.parity = EUSCI_A_UART_NO_PARITY;
	uart_init_struct.msborLsbFirst = EUSCI_A_UART_LSB_FIRST;
	uart_init_struct.numberofStopBits = EUSCI_A_UART_ONE_STOP_BIT;
	uart_init_struct.uartMode = EUSCI_A_UART_MODE;
	uart_init_struct.overSampling = SERIAL_OVERSAMPLING;

	EUSCI_A_UART_init(EUSCI_A0_BASE, &uart_init_struct);

	// enable UART peripheral
	EUSCI_A_UART_enable(EUSCI_A0_BASE);
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

	for (unsigned int i = 0; i < len; i++) {
		Serial_sendChar(str[i]);
	}
}

