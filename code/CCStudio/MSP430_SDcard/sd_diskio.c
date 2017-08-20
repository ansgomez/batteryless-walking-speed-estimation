/*-----------------------------------------------------------------------*/
/* MMC/SDC (in SPI mode) control module  (C)ChaN, 2007                   */
/*-----------------------------------------------------------------------*/
/* Only rcvr_spi(), xmit_spi(), disk_timerproc() and some macros         */
/* are platform dependent.                                               */
/*-----------------------------------------------------------------------*/

/*
 * This file was modified from a sample available from the FatFs
 * web site. It was modified to work with the MS432 Launchpad.
 * The DK-TM4C123G development board porting file from TI TivaWare was
 * used as an example.
 *
 * Author: Gerard Sequeira, bluehash@43oh
 *
 * EDIT: Thomas Schalch, 2016
 * many corrections such that code runs with every tested SD Card
 * Ported for MSP430
 *
 */

#include <msp430.h>

/* DriverLib Includes */
#include "driverlib.h"

/* Standard Includes */
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include "clock.h"

#include "utils/diskio.h"
#include "sd_diskio.h"

// A structure that holds a mapping between an FRESULT numerical code, and a
// string representation.  FRESULT codes are returned from the FatFs FAT file
// system driver.
typedef struct {
	FRESULT iFResult;
	char *pcResultStr;
} tFResultString;

// A macro to make it easy to add result codes to the table.
#define FRESULT_ENTRY(f)        { (f), (#f) }

// A table that holds a mapping between the numerical FRESULT code and it's
// name as a string.  This is used for looking up error codes for printing to
// the console.
tFResultString g_psFResultStrings[] = {
FRESULT_ENTRY(FR_OK),
FRESULT_ENTRY(FR_DISK_ERR),
FRESULT_ENTRY(FR_INT_ERR),
FRESULT_ENTRY(FR_NOT_READY),
FRESULT_ENTRY(FR_NO_FILE),
FRESULT_ENTRY(FR_NO_PATH),
FRESULT_ENTRY(FR_INVALID_NAME),
FRESULT_ENTRY(FR_DENIED),
FRESULT_ENTRY(FR_EXIST),
FRESULT_ENTRY(FR_INVALID_OBJECT),
FRESULT_ENTRY(FR_WRITE_PROTECTED),
FRESULT_ENTRY(FR_INVALID_DRIVE),
FRESULT_ENTRY(FR_NOT_ENABLED),
FRESULT_ENTRY(FR_NO_FILESYSTEM),
FRESULT_ENTRY(FR_MKFS_ABORTED),
FRESULT_ENTRY(FR_TIMEOUT),
FRESULT_ENTRY(FR_LOCKED),
FRESULT_ENTRY(FR_NOT_ENOUGH_CORE),
FRESULT_ENTRY(FR_TOO_MANY_OPEN_FILES),
FRESULT_ENTRY(FR_INVALID_PARAMETER), };

// A macro that holds the number of result codes.
#define NUM_FRESULT_CODES       (sizeof(g_psFResultStrings) /                 \
                                 sizeof(tFResultString))


// This function returns a string representation of an error code that was
// returned from a function call to FatFs.  It can be used for printing human
// readable error messages.
const char * StringFromFResult(FRESULT iFResult) {
	uint_fast8_t ui8Idx;

	// Enter a loop to search the error code table for a matching error code.
	for (ui8Idx = 0; ui8Idx < NUM_FRESULT_CODES; ui8Idx++) {
		// If a match is found, then return the string name of the error code.
		if (g_psFResultStrings[ui8Idx].iFResult == iFResult) {
			return (g_psFResultStrings[ui8Idx].pcResultStr);
		}
	}

	// At this point no matching code was found, so return a string indicating
	// an unknown error.
	return ("UNKNOWN ERROR CODE");
}


/*--------------------------------------------------------------------------

   Module Private Functions

---------------------------------------------------------------------------*/

static volatile
DSTATUS Stat = STA_NOINIT;    /* Disk status */

//static volatile
//BYTE Timer1, Timer2;    /* 100Hz decrement timer */

static
BYTE CardType;            /* b0:MMC, b1:SDC, b2:Block addressing */

static
BYTE PowerFlag = 0;     /* indicates if "power" is on */


static
void dly_us (UINT n)	/* Delay n microseconds */
{
	while (n) {
		__delay_cycles(10);
		n--;
	}
}


// set the SPI speed to the max setting
static
void set_max_speed(void)
{
	EUSCI_B_SPI_changeMasterClockParam spi_clock_struct = {
			.clockSourceFrequency = SMCLK_Freq,
			.desiredSpiClock = SD_SPI_MAX_FREQUENCY
	};

	EUSCI_B_SPI_changeMasterClock(SD_SPI_BASE, &spi_clock_struct);
}

// set the SPI speed to the init setting
static
void set_init_speed(void)
{
	EUSCI_B_SPI_changeMasterClockParam spi_clock_struct = {
			.clockSourceFrequency = SMCLK_Freq,
			.desiredSpiClock = SD_SPI_FREQUENCY
	};

	EUSCI_B_SPI_changeMasterClock(SD_SPI_BASE, &spi_clock_struct);
}

/*-----------------------------------------------------------------------*/
/* Transmit a byte to MMC via SPI  (Platform dependent)                  */
/*-----------------------------------------------------------------------*/

static
BYTE xmit_spi(BYTE dat)						// EDIT tschalch msp430
{
    while (!(UCB0IFG & UCTXIFG))
        ; // wait for previous tx to complete

    UCB0TXBUF = dat; // setting TXBUF clears the TXIFG flag

    while (!(UCB0IFG & UCRXIFG))
        ; // wait for an rx character?

    return UCB0RXBUF; // reading clears RXIFG flag
}


/*-----------------------------------------------------------------------*/
/* Receive a byte from MMC via SPI  (Platform dependent)                 */
/*-----------------------------------------------------------------------*/

static
BYTE rcvr_spi (void)
{
    /* Send a dummy. */
    while (!(UCB0IFG & UCTXIFG))
        ; // wait for any previous xmits to complete

    UCB0TXBUF = 0xFF; // Send dummy packet to get data back.

    while (!(UCB0IFG & UCRXIFG))
        ; // wait to recv a character?

    return UCB0RXBUF; // reading clears RXIFG flag
}


static
void rcvr_spi_m (BYTE *dst)
{
    *dst = rcvr_spi();

}

/*-----------------------------------------------------------------------*/
/* Wait for card ready                                                   */
/*-----------------------------------------------------------------------*/

static
BYTE wait_ready (void)
{
    BYTE res;
    UINT tmr;						// EDIT tschalch msp430

    rcvr_spi();
	for (tmr = 50000; tmr; tmr--) {	/* Wait for ready in timeout of 500ms */
        res = rcvr_spi();			// EDIT tschalch msp430
		if (res == 0xFF) break;		// EDIT tschalch msp430
    		dly_us(10);					// EDIT tschalch msp430
    }

    return res;
}

// de-asserts the CS pin to the card
static
void DESELECT (void)
{
	GPIO_setOutputHighOnPin(SD_PORT_CS, SD_PIN_CS);
	//dly_us(1);
	rcvr_spi();
}

// asserts the CS pin to the card
static
BYTE SELECT (void)
{

	GPIO_setOutputLowOnPin(SD_PORT_CS, SD_PIN_CS);
	//dly_us(1);
	if (wait_ready() == 0xFF) return 1;		// EDIT tschalch
	DESELECT();				// failed		// EDIT tschalch
    return 0;								// EDIT tschalch
}

/*-----------------------------------------------------------------------*/
/* Send 80 or so clock transitions with CS and DI held high. This is     */
/* required after card power up to get it into SPI mode                  */
/*-----------------------------------------------------------------------*/
static
void send_initial_clock_train(void)
{
    unsigned int i;

    /* Ensure CS is held high. */
    DESELECT();

    set_init_speed();

    /* Switch the SSI TX line to a GPIO and drive it high too. */
    //ROM_GPIOPinTypeGPIOOutput(SDC_GPIO_PORT_BASE, SDC_SSI_TX);
    //ROM_GPIOPinWrite(SDC_GPIO_PORT_BASE, SDC_SSI_TX, SDC_SSI_TX);

    /* Send 10 bytes over the SSI. This causes the clock to wiggle the */
    /* required number of times. */
    for(i = 0 ; i < 10 ; i++)
    {
        /* Write DUMMY data */
    		xmit_spi(0xFF);			// EDIT tschalch
    }
}

/*-----------------------------------------------------------------------*/
/* Power Control  (Platform dependent)                                   */
/*-----------------------------------------------------------------------*/
/* When the target system does not support socket power control, there   */
/* is nothing to do in these functions and chk_power always returns 1.   */

static
void power_on (void)
{
	GPIO_setOutputHighOnPin(SD_PORT_POWER, SD_PIN_POWER);
	dly_us(1);

    /* Set DI and CS high and apply more than 74 pulses to SCLK for the card */
    /* to be able to accept a native command. */
    send_initial_clock_train();

    PowerFlag = 1;
}

static
void power_off (void)
{
	GPIO_setOutputLowOnPin(SD_PORT_POWER, SD_PIN_POWER);

    PowerFlag = 0;
}

static
int chk_power(void)        /* Socket power state: 0=off, 1=on */
{
    return PowerFlag;
}



/*-----------------------------------------------------------------------*/
/* Receive a data packet from MMC                                        */
/*-----------------------------------------------------------------------*/

static
BOOL rcvr_datablock (
    BYTE *buff,            /* Data buffer to store received data */
    UINT btr            /* Byte count (must be even number) */
)
{
    BYTE token;
    UINT tmr;						// EDIT tschalch msp430

	for (tmr = 1000; tmr; tmr--) {	/* Wait for data packet in timeout of 100ms */
        token = rcvr_spi();			// EDIT tschalch msp430
		if (token != 0xFF) break;	// EDIT tschalch msp430
		dly_us(100);					// EDIT tschalch msp430
	}								// EDIT tschalch msp430
    if(token != 0xFE) return FALSE;    /* If not valid data token, return with error */

    do {                            /* Receive the data block into buffer */
        rcvr_spi_m(buff++);
        rcvr_spi_m(buff++);
    } while (btr -= 2);
    rcvr_spi();                        /* Discard CRC */
    rcvr_spi();

    return TRUE;                    /* Return with success */
}



/*-----------------------------------------------------------------------*/
/* Send a data packet to MMC                                             */
/*-----------------------------------------------------------------------*/

#if _READONLY == 0
static
BOOL xmit_datablock (
    const BYTE *buff,    /* 512 byte data block to be transmitted */
    BYTE token            /* Data/Stop token */
)
{
    BYTE resp, wc;

    if (wait_ready() != 0xFF) return FALSE;

    xmit_spi(token);                    /* Xmit data token */
    if (token != 0xFD) {    /* Is data token */
		/* Xmit the 512 byte data block to MMC */

#if SD_USE_DMA > 0
		// configure DMA

		// trigger channel 0 from SPI (USCI B0)
		DMACTL0 |= DMA0TSEL__UCB0TXIFG0;

		// wait with transfer during read-modify-write operations
		DMACTL4 |= DMARMWDIS;

		// set source address
		__data16_write_addr((uint16_t) &DMA0SA, (uint32_t) (buff+1));
		__data16_write_addr((uint16_t) &DMA0DA, EUSCI_A_SPI_getTransmitBufferAddress(SD_SPI_BASE));

		// set transfer size to image size
		DMA0SZ = 511;

		// congifure DMA: single mode, increasing destination address,
		// interrupt clear and enable
		DMA0CTL = DMADT_0 | DMASRCINCR_3 | DMADSTBYTE | DMASRCBYTE | DMAIE | DMAEN;

		//UCB0TXBUF = *buff;		// transmit first byte
		xmit_spi(*buff);

		__bis_SR_register(LPM0_bits | GIE);

		for ( uint8_t temp = 0; temp < 5; temp++  ) {	 /* CRC (Dummy) */
			resp = rcvr_spi();
	        if ((resp & 0x1F) == 0x05)        /* If not accepted, return with error */
	            return TRUE;
		}
		return FALSE;

#else
        wc = 0;
        do {                            /* Xmit the 512 byte data block to MMC */
            xmit_spi(*buff++);
            xmit_spi(*buff++);
        } while (--wc);
        xmit_spi(0xFF);                    /* CRC (Dummy) */
        xmit_spi(0xFF);
        resp = rcvr_spi();                /* Reveive data response */
        if ((resp & 0x1F) != 0x05)        /* If not accepted, return with error */
            return FALSE;
#endif
    }
    return TRUE;
}
#endif /* _READONLY */



/*-----------------------------------------------------------------------*/
/* Send a command packet to MMC                                          */
/*-----------------------------------------------------------------------*/

static
BYTE send_cmd (
    BYTE cmd,        /* Command byte */
    DWORD arg        /* Argument */
)
{
    BYTE n, res;

    if (wait_ready() != 0xFF) return 0xFF;
	//if (cmd != CMD12) {						// EDIT tschalch
	//	DESELECT();
	//	if (!SELECT()) return 0xFF;
	//}

    /* Send command packet */
    xmit_spi(cmd);                        /* Command */
    xmit_spi((BYTE)(arg >> 24));        /* Argument[31..24] */
    xmit_spi((BYTE)(arg >> 16));        /* Argument[23..16] */
    xmit_spi((BYTE)(arg >> 8));            /* Argument[15..8] */
    xmit_spi((BYTE)arg);          	      /* Argument[7..0] */
    n = 0x01;							// EDIT tschalch -> 0xff
    if (cmd == CMD0) n = 0x95;            /* CRC for CMD0(0) */
    if (cmd == CMD8) n = 0x87;            /* CRC for CMD8(0x1AA) */
    xmit_spi(n);

    /* Receive command response */
    if (cmd == CMD12) rcvr_spi();        /* Skip a stuff byte when stop reading */

    n = 10;                             /* Wait for a valid response in timeout of 10 attempts */
    do
        res = rcvr_spi();
    while ((res & 0x80) && --n);

    return res;            /* Return with the response value */
}

/*-----------------------------------------------------------------------*
 * Send the special command used to terminate a multi-sector read.
 *
 * This is the only command which can be sent while the SDCard is sending
 * data. The SDCard spec indicates that the data transfer will stop 2 bytes
 * after the 6 byte CMD12 command is sent and that the card will then send
 * 0xFF for between 2 and 6 more bytes before the R1 response byte.  This
 * response will be followed by another 0xFF byte.  In testing, however, it
 * seems that some cards don't send the 2 to 6 0xFF bytes between the end of
 * data transmission and the response code.  This function, therefore, merely
 * reads 10 bytes and, if the last one read is 0xFF, returns the value of the
 * latest non-0xFF byte as the response code.
 *
 *-----------------------------------------------------------------------*/

static
BYTE send_cmd12 (void)
{
    BYTE n, res, val;

    /* For CMD12, we don't wait for the card to be idle before we send
     * the new command.
     */

    /* Send command packet - the argument for CMD12 is ignored. */
    xmit_spi(CMD12);
    xmit_spi(0);
    xmit_spi(0);
    xmit_spi(0);
    xmit_spi(0);
    xmit_spi(0);

    /* Read up to 10 bytes from the card, remembering the value read if it's
       not 0xFF */
    for(n = 0; n < 10; n++)
    {
        val = rcvr_spi();
        if(val != 0xFF)
        {
            res = val;
        }
    }
    return res;            /* Return with the response value */
}

/*--------------------------------------------------------------------------

   Public Functions

---------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------*/
/* Initialize Disk Drive                                                 */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (
    BYTE drv        /* Physical drive nmuber (0) */
)
{
    BYTE n, ty, ocr[4];
    UINT tmr;							// EDIT tschalch msp430

    if (drv) return STA_NOINIT;            /* Supports only single drive */
    if (Stat & STA_NODISK) return Stat;    /* No card in the socket */

    set_init_speed();

    power_on();                            /* Force socket power on */
    //send_initial_clock_train();   // EDIT tschalch        /* Ensure the card is in SPI mode */

    // EDIT tschalch
    SELECT();                /* CS = L */

    ty = 0;
    if (send_cmd(CMD0, 0) == 1) {            /* Enter Idle state */
        if (send_cmd(CMD8, 0x1AA) == 1) {    /* SDC Ver2+ */
            for (n = 0; n < 4; n++) ocr[n] = rcvr_spi();
            if (ocr[2] == 0x01 && ocr[3] == 0xAA) {    /* The card can work at vdd range of 2.7-3.6V */

				for (tmr = 1000; tmr; tmr--) {			/* Wait for leaving idle state (ACMD41 with HCS bit) */
														// EDIT tschalch msp430
                    if (send_cmd(CMD55, 0) <= 1 && send_cmd(CMD41, 1UL << 30) == 0)    break;    /* ACMD41 with HCS bit */
            			dly_us(1000);
                }
                if (tmr && send_cmd(CMD58, 0) == 0) {    /* Check CCS bit */
                    for (n = 0; n < 4; n++) ocr[n] = rcvr_spi();
                    ty = (ocr[0] & 0x40) ? 6 : 2;
                }
            }
        } else {                            /* SDC Ver1 or MMC */
            ty = (send_cmd(CMD55, 0) <= 1 && send_cmd(CMD41, 0) <= 1) ? 2 : 1;    /* SDC : MMC */
			for (tmr = 1000; tmr; tmr--) {					// EDIT tschalch msp430
                if (ty == 2) {
                    if (send_cmd(CMD55, 0) <= 1 && send_cmd(CMD41, 0) == 0) break;    /* ACMD41 */
                } else {
                    if (send_cmd(CMD1, 0) == 0) break;    /* CMD1 */
                }
                dly_us(1000);								// EDIT tschalch msp430
            }
            if (!tmr || send_cmd(CMD16, 512) != 0)    /* Select R/W block length */
                ty = 0;
        }
    }
    CardType = ty;
    DESELECT();            /* CS = H */
    //rcvr_spi();            /* Idle (Release DO) */

    if (ty) {            /* Initialization succeded */
        Stat &= ~STA_NOINIT;        /* Clear STA_NOINIT */
        set_max_speed();
    } else {            /* Initialization failed */
        power_off();
    }

    return Stat;
}



/*-----------------------------------------------------------------------*/
/* Get Disk Status                                                       */
/*-----------------------------------------------------------------------*/

DSTATUS disk_status (
    BYTE drv        /* Physical drive nmuber (0) */
)
{
    if (drv) return STA_NOINIT;        /* Supports only single drive */
    return Stat;
}



/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */
/*-----------------------------------------------------------------------*/

DRESULT disk_read (
    BYTE drv,            /* Physical drive nmuber (0) */
    BYTE *buff,            /* Pointer to the data buffer to store read data */
    DWORD sector,        /* Start sector number (LBA) */
	BYTE count            /* Sector count (1..255) */
)
{
    if (drv || !count) return RES_PARERR;
    if (Stat & STA_NOINIT) return RES_NOTRDY;

    if (!(CardType & 4)) sector *= 512;    /* Convert to byte address if needed */

    SELECT();            /* CS = L */

    if (count == 1) {    /* Single block read */
        if ((send_cmd(CMD17, sector) == 0)    /* READ_SINGLE_BLOCK */
            && rcvr_datablock(buff, 512))
            count = 0;
    }
    else {                /* Multiple block read */
        if (send_cmd(CMD18, sector) == 0) {    /* READ_MULTIPLE_BLOCK */
            do {
                if (!rcvr_datablock(buff, 512)) break;
                buff += 512;
            } while (--count);
            send_cmd12();                /* STOP_TRANSMISSION */
        }
    }

    DESELECT();            /* CS = H */
    //rcvr_spi();            /* Idle (Release DO) */

    return count ? RES_ERROR : RES_OK;
}



/*-----------------------------------------------------------------------*/
/* Write Sector(s)                                                       */
/*-----------------------------------------------------------------------*/

#if _READONLY == 0
DRESULT disk_write (
    BYTE drv,            /* Physical drive nmuber (0) */
    const BYTE *buff,    /* Pointer to the data to be written */
    DWORD sector,        /* Start sector number (LBA) */
	BYTE count            /* Sector count (1..255) */
)
{
    if (drv || !count) return RES_PARERR;
    if (Stat & STA_NOINIT) return RES_NOTRDY;
    if (Stat & STA_PROTECT) return RES_WRPRT;

    if (!(CardType & 4)) sector *= 512;    /* Convert to byte address if needed */

    SELECT();            /* CS = L */

    if (count == 1) {    /* Single block write */
        if ((send_cmd(CMD24, sector) == 0)    /* WRITE_BLOCK */
            && xmit_datablock(buff, 0xFE))
            count = 0;
    }
    else {                /* Multiple block write */
        if (CardType & 2) {
            send_cmd(CMD55, 0); send_cmd(CMD23, count);    /* ACMD23 */
        }
        if (send_cmd(CMD25, sector) == 0) {    /* WRITE_MULTIPLE_BLOCK */
            do {
                if (!xmit_datablock(buff, 0xFC)) break;
                buff += 512;
            } while (--count);
            if (!xmit_datablock(0, 0xFD))    /* STOP_TRAN token */
                count = 1;
        }
    }

    DESELECT();            /* CS = H */
    //rcvr_spi();            /* Idle (Release DO) */

    return count ? RES_ERROR : RES_OK;
}
#endif /* _READONLY */



/*-----------------------------------------------------------------------*/
/* Miscellaneous Functions                                               */
/*-----------------------------------------------------------------------*/

DRESULT disk_ioctl (
    BYTE drv,        /* Physical drive nmuber (0) */
    BYTE ctrl,        /* Control code */
    void *buff        /* Buffer to send/receive control data */
)
{
    DRESULT res;
    BYTE n, csd[16], *ptr = buff;
    WORD csize;

    if (drv) return RES_PARERR;

    res = RES_ERROR;

    if (ctrl == CTRL_POWER) {
        switch (*ptr) {
        case 0:        /* Sub control code == 0 (POWER_OFF) */
            if (chk_power())
                power_off();        /* Power off */
            res = RES_OK;
            break;
        case 1:        /* Sub control code == 1 (POWER_ON) */
            power_on();                /* Power on */
            res = RES_OK;
            break;
        case 2:        /* Sub control code == 2 (POWER_GET) */
            *(ptr+1) = (BYTE)chk_power();
            res = RES_OK;
            break;
        default :
            res = RES_PARERR;
        }
    }
    else {
        if (Stat & STA_NOINIT) return RES_NOTRDY;

        SELECT();        /* CS = L */

        switch (ctrl) {
        case GET_SECTOR_COUNT :    /* Get number of sectors on the disk (DWORD) */
            if ((send_cmd(CMD9, 0) == 0) && rcvr_datablock(csd, 16)) {
                if ((csd[0] >> 6) == 1) {    /* SDC ver 2.00 */
                    csize = csd[9] + ((WORD)csd[8] << 8) + 1;
                    *(DWORD*)buff = (DWORD)csize << 10;
                } else {                    /* MMC or SDC ver 1.XX */
                    n = (csd[5] & 15) + ((csd[10] & 128) >> 7) + ((csd[9] & 3) << 1) + 2;
                    csize = (csd[8] >> 6) + ((WORD)csd[7] << 2) + ((WORD)(csd[6] & 3) << 10) + 1;
                    *(DWORD*)buff = (DWORD)csize << (n - 9);
                }
                res = RES_OK;
            }
            break;

        case GET_SECTOR_SIZE :    /* Get sectors on the disk (WORD) */
            *(WORD*)buff = 512;
            res = RES_OK;
            break;

        case CTRL_SYNC :    /* Make sure that data has been written */
            if (wait_ready() == 0xFF)
                res = RES_OK;
            break;

        case MMC_GET_CSD :    /* Receive CSD as a data block (16 bytes) */
            if (send_cmd(CMD9, 0) == 0        /* READ_CSD */
                && rcvr_datablock(ptr, 16))
                res = RES_OK;
            break;

        case MMC_GET_CID :    /* Receive CID as a data block (16 bytes) */
            if (send_cmd(CMD10, 0) == 0        /* READ_CID */
                && rcvr_datablock(ptr, 16))
                res = RES_OK;
            break;

        case MMC_GET_OCR :    /* Receive OCR as an R3 resp (4 bytes) */
            if (send_cmd(CMD58, 0) == 0) {    /* READ_OCR */
                for (n = 0; n < 4; n++)
                    *ptr++ = rcvr_spi();
                res = RES_OK;
            }

//        case MMC_GET_TYPE :    /* Get card type flags (1 byte) */
//            *ptr = CardType;
//            res = RES_OK;
//            break;

        default:
            res = RES_PARERR;
        }

        DESELECT();            /* CS = H */
        //rcvr_spi();            /* Idle (Release DO) */
    }
    return res;
}



/*-----------------------------------------------------------------------*/
/* Device Timer Interrupt Procedure  (Platform dependent)                */
/*-----------------------------------------------------------------------*/
/* This function must be called in period of 10ms                        */

//void disk_timerproc (void)
//{
 //   BYTE n;

//    n = Timer1;                        /* 100Hz decrement timer */
//    if (n) Timer1 = --n;
//    n = Timer2;
//    if (n) Timer2 = --n;
//}

/*---------------------------------------------------------*/
/* User Provided Timer Function for FatFs module           */
/*---------------------------------------------------------*/
/* This is a real time clock service to be called from     */
/* FatFs module. Any valid time must be returned even if   */
/* the system does not support a real time clock.          */

DWORD get_fattime (void)
{

    return    ((2007UL-1980) << 25)    // Year = 2007
            | (6UL << 21)            // Month = June
            | (5UL << 16)            // Day = 5
            | (11U << 11)            // Hour = 11
            | (38U << 5)            // Min = 38
            | (0U >> 1)                // Sec = 0
            ;

}


/*
 * Initialize SPI connection to SD card
 */
void SDcard_SPI_init(void) {
	/* SPI Master Configuration Parameter */
	EUSCI_B_SPI_initMasterParam spi_init_struct = {
		.selectClockSource = EUSCI_B_SPI_CLOCKSOURCE_SMCLK,
		.clockSourceFrequency = SMCLK_Freq,			// CS_getSMCLK()
		.desiredSpiClock = SD_SPI_FREQUENCY,
		.msbFirst = EUSCI_B_SPI_MSB_FIRST,
//		.clockPhase = EUSCI_B_SPI_PHASE_DATA_CAPTURED_ONFIRST_CHANGED_ON_NEXT,
		.clockPhase = EUSCI_B_SPI_PHASE_DATA_CHANGED_ONFIRST_CAPTURED_ON_NEXT,
		.clockPolarity = EUSCI_B_SPI_CLOCKPOLARITY_INACTIVITY_HIGH,
		.spiMode = EUSCI_B_SPI_3PIN,
	};

	EUSCI_B_SPI_initMaster(SD_SPI_BASE, &spi_init_struct);

	// enable SPI
	EUSCI_B_SPI_enable(SD_SPI_BASE);

	/* Selecting P4.5 as output for Powering the SD Card. */
	GPIO_setAsPeripheralModuleFunctionInputPin(SD_PORT_POWER, SD_PIN_POWER, GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsOutputPin(SD_PORT_POWER, SD_PIN_POWER);
	GPIO_setOutputHighOnPin(SD_PORT_POWER, SD_PIN_POWER);

	/* Selecting P1.5 P1.6 and P1.7 in SPI mode */
	GPIO_setAsPeripheralModuleFunctionInputPin(SD_PORT_CLK, SD_PIN_CLK, GPIO_SECONDARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionInputPin(SD_PORT_MISO, SD_PIN_MISO, GPIO_SECONDARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionInputPin(SD_PORT_MOSI, SD_PIN_MOSI, GPIO_SECONDARY_MODULE_FUNCTION);

	/* CS setup. */
	GPIO_setOutputHighOnPin(SD_PORT_CS, SD_PIN_CS);
	GPIO_setAsOutputPin(SD_PORT_CS, SD_PIN_CS);
}

void SDcard_enable() {

	/* Selecting P1.5 P1.6 and P1.7 in SPI mode */
	GPIO_setAsPeripheralModuleFunctionInputPin(SD_PORT_CLK, SD_PIN_CLK, GPIO_SECONDARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionInputPin(SD_PORT_MISO, SD_PIN_MISO, GPIO_SECONDARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionInputPin(SD_PORT_MOSI, SD_PIN_MOSI, GPIO_SECONDARY_MODULE_FUNCTION);

	GPIO_setOutputHighOnPin(SD_PORT_CS, SD_PIN_CS);
	GPIO_setAsOutputPin(SD_PORT_CS, SD_PIN_CS);

	power_on();
}

void SDcard_disable() {

	// configure output
	GPIO_setAsOutputPin(SD_PORT_CLK, SD_PIN_CLK);
	GPIO_setAsOutputPin(SD_PORT_MOSI, SD_PIN_MOSI);
	GPIO_setAsOutputPin(SD_PORT_MISO, SD_PIN_MISO);

	// set outputs low
	GPIO_setOutputLowOnPin(SD_PORT_POWER, SD_PIN_POWER);
	GPIO_setOutputLowOnPin(SD_PORT_CLK, SD_PIN_CLK);
	GPIO_setOutputLowOnPin(SD_PORT_MOSI, SD_PIN_MOSI);
	GPIO_setOutputLowOnPin(SD_PORT_MISO, SD_PIN_MISO);
	GPIO_setOutputLowOnPin(SD_PORT_CS, SD_PIN_CS);

    PowerFlag = 0;
}
