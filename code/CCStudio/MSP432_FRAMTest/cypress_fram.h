#ifndef CYPRESS_FRAM_H_
#define CYPRESS_FRAM_H_

#include <stdint.h>

#include "driverlib.h"

// ***** Peripheral Definitions ***** //
#define FRAM_SPI_PERIPHERAL 		EUSCI_A1_BASE
#define FRAM_SPI_FREQUENCY		1000000
#define FRAM_SPI_DUMMY_MESSAGE 	0x00

#define FRAM_SIZE_BYTE			0x20000


// ***** IO Pin Definitions ***** //
#define FRAM_PORT_CLK	GPIO_PORT_P2
#define FRAM_PIN_CLK		GPIO_PIN1
#define FRAM_PORT_MISO	GPIO_PORT_P2
#define FRAM_PIN_MISO	GPIO_PIN2
#define FRAM_PORT_MOSI	GPIO_PORT_P2
#define FRAM_PIN_MOSI	GPIO_PIN3
#define FRAM_PORT_CS		GPIO_PORT_P2
#define FRAM_PIN_CS		GPIO_PIN0

#define FRAM_PORT_POWER	GPIO_PORT_P6
#define FRAM_PIN_POWER	GPIO_PIN0

// ***** Command Defines ***** //
#define FRAM_CMD_WRSR	0x01
#define FRAM_CMD_WRITE	0x02
#define FRAM_CMD_READ	0x03
#define FRAM_CMD_WRDI	0x04
#define FRAM_CMD_RDSR	0x05
#define FRAM_CMD_WREN	0x06
#define FRAM_CMD_FSTRD	0x0b
#define FRAM_CMD_SLEEP	0xb9
#define FRAM_CMD_RDID	0x9f
#define FRAM_CMD_SNR	0xc3

void EXTFRAM_init(void);
void EXTFRAM_initGPIO(void);

void EXTFRAM_powerOn(void);
void EXTFRAM_powerOff(void);

uint16_t EXTFRAM_read(uint32_t, void*, uint16_t);
uint16_t EXTFRAM_write(uint32_t, const void*, uint16_t);

void EXTFRAM_sleep(void);
void EXTFRAM_wakeup(void);

#endif /* CYPRESS_FRAM_H_ */
