#ifndef SERIAL_H_
#define SERIAL_H_

#include "driverlib.h"

// Baudrate for 1MHz clock source
// 38400	OVERSAMPLING: yes	prescaler: 1	second: 0x00	first: 10
// 57600	OVERSAMPLING: no	prescaler: 17	second: 0x4a	first: -
// 115200	OVERSAMPLING: no	prescaler: 8	second: 0xd6	first: -
// Oversampling:	EUSCI_A_UART_OVERSAMPLING_BAUDRATE_GENERATION
// No oversampling:	EUSCI_A_UART_LOW_FREQUENCY_BAUDRATE_GENERATION

// 1MHz, 57500baud
//#define SERIAL_CLOCK_SOURCE			EUSCI_A_UART_CLOCKSOURCE_SMCLK
//#define SERIAL_PRESCALER 			17
//#define SERIAL_OVERSAMPLING			EUSCI_A_UART_LOW_FREQUENCY_BAUDRATE_GENERATION
//#define SERIAL_FIRST_MODULATION		0
//#define SERIAL_SECOND_MODULATION	0x4a

// 1MHz, 115200baud
//#define SERIAL_CLOCK_SOURCE			EUSCI_A_UART_CLOCKSOURCE_SMCLK
//#define SERIAL_PRESCALER 			8*4
//#define SERIAL_OVERSAMPLING			EUSCI_A_UART_LOW_FREQUENCY_BAUDRATE_GENERATION
//#define SERIAL_FIRST_MODULATION		0
//#define SERIAL_SECOND_MODULATION	0xd6

// 4MHz, 115200baud
//#define SERIAL_CLOCK_SOURCE			EUSCI_A_UART_CLOCKSOURCE_SMCLK
//#define SERIAL_PRESCALER 			2
//#define SERIAL_OVERSAMPLING			EUSCI_A_UART_OVERSAMPLING_BAUDRATE_GENERATION
//#define SERIAL_FIRST_MODULATION		2
//#define SERIAL_SECOND_MODULATION	0xbb

// 5MHz, 115200baud
//#define SERIAL_CLOCK_SOURCE			EUSCI_A_UART_CLOCKSOURCE_SMCLK
//#define SERIAL_PRESCALER 			2
//#define SERIAL_OVERSAMPLING			EUSCI_A_UART_OVERSAMPLING_BAUDRATE_GENERATION
//#define SERIAL_FIRST_MODULATION		11
//#define SERIAL_SECOND_MODULATION	146

// 5.25MHz, 115200baud
#define SERIAL_CLOCK_SOURCE			EUSCI_A_UART_CLOCKSOURCE_SMCLK
#define SERIAL_PRESCALER 			2
#define SERIAL_OVERSAMPLING			EUSCI_A_UART_OVERSAMPLING_BAUDRATE_GENERATION
#define SERIAL_FIRST_MODULATION		13
#define SERIAL_SECOND_MODULATION	107


// 10.5MHz, 115200baud
//#define SERIAL_CLOCK_SOURCE			EUSCI_A_UART_CLOCKSOURCE_SMCLK
//#define SERIAL_PRESCALER 			5
//#define SERIAL_OVERSAMPLING			EUSCI_A_UART_OVERSAMPLING_BAUDRATE_GENERATION
//#define SERIAL_FIRST_MODULATION		11
//#define SERIAL_SECOND_MODULATION	32


void Serial_init(void);

void Serial_sendChar(char);
void Serial_sendString(char*);

#endif /* SERIAL_H_ */
