/*
 * sd_diskio.h
 *
 *  Created on: 14.03.2016
 *      Author: thomas
 */

#ifndef SD_DISKIO_H_
#define SD_DISKIO_H_

#include "utils/ff.h"
#include "utils/diskio.h"

#define SD_SPI_FREQUENCY			400000			/* SPI clock Frequency for initialization */
#define SD_SPI_MAX_FREQUENCY		16000000			/* max SPI clock Frequency */
#define SD_SPI_BASE				EUSCI_B0_BASE	/* EUSCI Base */

// ***** IO Pin Definitions ***** //
#define SD_PORT_CLK		GPIO_PORT_P1
#define SD_PIN_CLK		GPIO_PIN5
#define SD_PORT_MISO		GPIO_PORT_P1
#define SD_PIN_MISO		GPIO_PIN7
#define SD_PORT_MOSI		GPIO_PORT_P1
#define SD_PIN_MOSI		GPIO_PIN6
#define SD_PORT_CS		GPIO_PORT_P1
#define SD_PIN_CS		GPIO_PIN4		// P1.4 on Demoboard!

#define SD_PORT_POWER	GPIO_PORT_P4
#define SD_PIN_POWER		GPIO_PIN5

/* Definitions for MMC/SDC command */
#define CMD0    (0x40+0)    /* GO_IDLE_STATE */
#define CMD1    (0x40+1)    /* SEND_OP_COND */
#define CMD8    (0x40+8)    /* SEND_IF_COND */
#define CMD9    (0x40+9)    /* SEND_CSD */
#define CMD10    (0x40+10)    /* SEND_CID */
#define CMD12    (0x40+12)    /* STOP_TRANSMISSION */
#define CMD16    (0x40+16)    /* SET_BLOCKLEN */
#define CMD17    (0x40+17)    /* READ_SINGLE_BLOCK */
#define CMD18    (0x40+18)    /* READ_MULTIPLE_BLOCK */
#define CMD23    (0x40+23)    /* SET_BLOCK_COUNT */
#define CMD24    (0x40+24)    /* WRITE_BLOCK */
#define CMD25    (0x40+25)    /* WRITE_MULTIPLE_BLOCK */
#define CMD41    (0x40+41)    /* SEND_OP_COND (ACMD) */
#define CMD55    (0x40+55)    /* APP_CMD */
#define CMD58    (0x40+58)    /* READ_OCR */

// The following are data structures used by FatFs.
static FATFS g_sFatFs;
static DIR g_sDirObject;
static FILINFO g_sFileInfo;
static FIL g_sFileObject;

void SDcard_SPI_init(void);
void SDcard_enable(void);
void SDcard_disable(void);

// This function returns a string representation of an error code that was
// returned from a function call to FatFs.  It can be used for printing human
// readable error messages.
const char * StringFromFResult(FRESULT iFResult);


#endif /* SD_DISKIO_H_ */
