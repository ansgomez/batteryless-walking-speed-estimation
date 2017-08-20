#ifndef CYPRESS_FLASH_H_
#define CYPRESS_FLASH_H_

#include <stdint.h>

#include "driverlib.h"

// ***** Peripheral Definitions ***** //
#define FLASH_SPI_PERIPHERAL 		EUSCI_A3_BASE
#define FLASH_SPI_FREQUENCY			1000000
#define FLASH_SPI_DUMMY_MESSAGE 		0x00

#define FLASH_SIZE_BYTE				0x20000


// ***** IO Pin Definitions ***** //
#define FLASH_PORT_CLK		GPIO_PORT_P9
#define FLASH_PIN_CLK		GPIO_PIN5
#define FLASH_PORT_MISO		GPIO_PORT_P9
#define FLASH_PIN_MISO		GPIO_PIN6
#define FLASH_PORT_MOSI		GPIO_PORT_P9
#define FLASH_PIN_MOSI		GPIO_PIN7
#define FLASH_PORT_CS		GPIO_PORT_P9
#define FLASH_PIN_CS			GPIO_PIN4

#define FLASH_PORT_POWER		GPIO_PORT_P4
#define FLASH_PIN_POWER		GPIO_PIN6

// ***** Command Defines ***** //
#define FLASH_CMD_WRSR	0x01
#define FLASH_CMD_PP		0x02
#define FLASH_CMD_READ	0x03
#define FLASH_CMD_WRDI	0x04
#define FLASH_CMD_RDSR	0x05
#define FLASH_CMD_WREN	0x06
#define FLASH_CMD_FSTRD	0x0b
#define FLASH_CMD_SLEEP	0xb9
#define FLASH_CMD_RDID	0x9f
#define FLASH_CMD_SNR	0xc3

void EXTFLASH_init(void);
void EXTFLASH_initGPIO(void);

void EXTFLASH_powerOn(void);
void EXTFLASH_powerOff(void);

uint16_t EXTFLASH_read(uint32_t, void*, uint16_t);
uint16_t EXTFLASH_write(uint32_t, const void*, uint16_t);

void EXTFLASH_sleep(void);
void EXTFLASH_wakeup(void);

#endif /* CYPRESS_FLASH_H_ */
