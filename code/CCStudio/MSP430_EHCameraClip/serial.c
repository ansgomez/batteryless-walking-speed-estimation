#include <string.h>

#include "driverlib.h"

#include "serial.h"

/**
 * Initialize the serial module with standard settings.
 */
void Serial_init(void) {
	EUSCI_A_UART_initParam uart_init_struct = {
		.selectClockSource = SERIAL_CLOCK_SOURCE,
		.clockPrescalar = SERIAL_PRESCALER,
		.firstModReg = SERIAL_FIRST_MODULATION,	// clock modulator 1 for oversampling
		.secondModReg = SERIAL_SECOND_MODULATION, // clock modulator 2
		.parity = EUSCI_A_UART_NO_PARITY,
		.msborLsbFirst = EUSCI_A_UART_LSB_FIRST,
		.numberofStopBits = EUSCI_A_UART_ONE_STOP_BIT,
		.uartMode = EUSCI_A_UART_MODE,
		.overSampling = SERIAL_OVERSAMPLING,
	};

	EUSCI_A_UART_init(SERIAL_PERIPHERAL, &uart_init_struct);

	// enable UART peripheral
	EUSCI_A_UART_enable(SERIAL_PERIPHERAL);
}

/**
 * Initialize the GPIO pins used by the serial module.
 */
void Serial_initGPIO(void) {
	GPIO_setAsPeripheralModuleFunctionInputPin(SERIAL_PORT_RX,
			SERIAL_PIN_RX, GPIO_SECONDARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionInputPin(SERIAL_PORT_TX,
			SERIAL_PIN_TX, GPIO_SECONDARY_MODULE_FUNCTION);
}

/**
 * Send a character over the serial.
 * @param c The character to send
 */
void Serial_sendChar(char c) {
	while (!EUSCI_A_UART_getInterruptStatus(SERIAL_PERIPHERAL,
	EUSCI_A_UART_TRANSMIT_INTERRUPT_FLAG)) {
		continue;
	}

	EUSCI_A_UART_transmitData(SERIAL_PERIPHERAL, (uint8_t) c);
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

/**
 * Send a data block over the serial.
 * @param data The start of the data block
 * @param size The length of the data block in bytes
 */
uint16_t Serial_sendData(const void* data, uint16_t size) {
	uint8_t* data_ptr = (uint8_t*)data;

	uint16_t i = 0;
	while (i < size) {
		Serial_sendChar(data_ptr[i++]);
	}

	return i;
}
