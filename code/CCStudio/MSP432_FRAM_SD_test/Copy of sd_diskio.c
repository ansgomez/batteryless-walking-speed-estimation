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
 *
 */

/* DriverLib Includes */
#include "driverlib.h"

/* Standard Includes */
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

//#include "serial.h"

#include "utils/diskio.h"
#include "sd_diskio.h"


/*--------------------------------------------------------------------------

   Module Private Functions

---------------------------------------------------------------------------*/

static volatile
DSTATUS Stat = STA_NOINIT;    /* Disk status */

static volatile
BYTE Timer1, Timer2;    /* 100Hz decrement timer */

static
BYTE CardType;            /* b0:MMC, b1:SDC, b2:Block addressing */

static
BYTE PowerFlag = 0;     /* indicates if "power" is on */


static
void dly_us (UINT n)	/* Delay n microseconds */
{
	while (n) {
		__delay_cycles(48);
		n--;
	}
}


// set the SSI speed to the max setting
static
void set_max_speed(void)
{
	//SPI_changeMasterClock(SD_SPI_BASE, CS_getSMCLK(), SD_SPI_MAX_FREQUENCY);
}

// set the SSI speed to the init setting
static
void set_init_speed(void)
{
	//SPI_changeMasterClock(SD_SPI_BASE, CS_getSMCLK(), SD_SPI_FREQUENCY);
}


/*-----------------------------------------------------------------------*/
/* Transmit a byte to MMC via SPI  (Platform dependent)                  */
/*-----------------------------------------------------------------------*/

static
void xmit_spi(BYTE dat)
{

    BYTE RcvDat = 0;

	SPI_clearInterruptFlag(SD_SPI_BASE, EUSCI_A_SPI_TRANSMIT_INTERRUPT);
    SPI_transmitData(SD_SPI_BASE, dat);

	// wait until trasmission complete
	while (!SPI_getInterruptStatus(SD_SPI_BASE, EUSCI_A_SPI_TRANSMIT_INTERRUPT)) {
		continue;
	}

    RcvDat = SPI_receiveData(SD_SPI_BASE);

    /* Get rid of "variable set, but unused" warning. */
    RcvDat = RcvDat + 1;
}


/*-----------------------------------------------------------------------*/
/* Receive a byte from MMC via SPI  (Platform dependent)                 */
/*-----------------------------------------------------------------------*/

static
BYTE rcvr_spi (void)
{
    BYTE RcvDat;

    /* Send a dummy. */

	SPI_clearInterruptFlag(SD_SPI_BASE, EUSCI_A_SPI_TRANSMIT_INTERRUPT);
    SPI_transmitData(SD_SPI_BASE, 0xFF);

	// wait until trasmission complete
	while (!SPI_getInterruptStatus(SD_SPI_BASE, EUSCI_A_SPI_TRANSMIT_INTERRUPT)) {
		continue;
	}

    RcvDat = SPI_receiveData(SD_SPI_BASE);

    return RcvDat;
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

    Timer2 = 50;    /* Wait for ready in timeout of 500ms */
    rcvr_spi();
    do {
        res = rcvr_spi();
    		dly_us(100);	// EDIT tschalch
    } while ((res != 0xFF) && Timer2);

    return res;
}

// de-asserts the CS pin to the card
static
void DESELECT (void)
{
	GPIO_setOutputHighOnPin(SD_PORT_CS, SD_PIN_CS);
	//rcvr_spi();				// EDIT tschalch
	//dly_us(100);
}

// asserts the CS pin to the card
static
BYTE SELECT (void)
{

	GPIO_setOutputLowOnPin(SD_PORT_CS, SD_PIN_CS);
	dly_us(100);
	//rcvr_spi();								// EDIT tschalch
	if (wait_ready() == 0xFF) return 1;		// EDIT tschalch

    //DESELECT();				// failed		// EDIT tschalch
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
    BYTE dat = 0;					// EDIT tschalch

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
        /* Write DUMMY data. SSIDataPut() waits until there is room in the */
        /* FIFO. */

    		xmit_spi(0xFF);			// EDIT tschalch
        //SPI_transmitData(SD_SPI_BASE, 0xFF);		// EDIT tschalch
        //dat = SPI_receiveData(SD_SPI_BASE);		// EDIT tschalch

        /* Get rid of "variable set, but unused" warning. */
        //dat = dat + 1;								// EDIT tschalch
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

	dly_us(1000);

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

    Timer1 = 100;
    do {                            /* Wait for data packet in timeout of 100ms */
        token = rcvr_spi();
        dly_us(100);					// EDIT tschalch
    } while ((token == 0xFF) && Timer1);
    if(token != 0xFE) return FALSE;    /* If not valid data token, retutn with error */

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

    //if (wait_ready() != 0xFF) return 0xFF;
	if (cmd != CMD12) {						// EDIT tschalch
		DESELECT();
		if (!SELECT()) return 0xFF;
	}

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

    // EDIT tschalch
    n = 100;                             /* Wait for a valid response in timeout of 10 attempts */
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

void SysTick_ISR(void) {
	// Call the FatFs tick timer.
	disk_timerproc();
}


/*
 * Initialize all Pins etc. for SPI connection to SD card
 */
void SDcard_SPI_init(void) {
	/* SPI Master Configuration Parameter */
	const eUSCI_SPI_MasterConfig spiMasterConfig =
	{
	        EUSCI_B_SPI_CLOCKSOURCE_SMCLK,             // SMCLK Clock Source
			CS_getSMCLK(),                             // SMCLK 3Mhz
			SD_SPI_FREQUENCY,                          // SPICLK = 500khz
	        EUSCI_B_SPI_MSB_FIRST,                     // MSB First
	        EUSCI_B_SPI_PHASE_DATA_CHANGED_ONFIRST_CAPTURED_ON_NEXT,    // Phase
	        EUSCI_B_SPI_CLOCKPOLARITY_INACTIVITY_HIGH, // High polarity
	        EUSCI_B_SPI_3PIN                           // 3Wire SPI Mode
	};

	/* Selecting P4.5 as output for Powering the SD Card. */
	GPIO_setAsPeripheralModuleFunctionInputPin(SD_PORT_POWER, SD_PIN_POWER, GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsOutputPin(SD_PORT_POWER, SD_PIN_POWER);
	GPIO_setOutputHighOnPin(SD_PORT_POWER, SD_PIN_POWER);

	/* Configure SysTick for a 100Hz interrupt.  The FatFs driver wants a 10 ms tick. */
	SysTick_setPeriod(CS_getSMCLK() / 100);
	SysTick_enableModule();
	SysTick_enableInterrupt();

	/* Selecting P1.5 P1.6 and P1.7 in SPI mode */
	GPIO_setAsPeripheralModuleFunctionInputPin(SD_PORT_CLK, SD_PIN_CLK, GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionInputPin(SD_PORT_MISO, SD_PIN_MISO, GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionInputPin(SD_PORT_MOSI, SD_PIN_MOSI, GPIO_PRIMARY_MODULE_FUNCTION);

	/* CS setup. */
	GPIO_setOutputHighOnPin(SD_PORT_CS, SD_PIN_CS);
	GPIO_setAsOutputPin(SD_PORT_CS, SD_PIN_CS);

	/* Configuring SPI in 3wire master mode */
	SPI_initMaster(SD_SPI_BASE, &spiMasterConfig);
	/* Enable SPI module */
	SPI_enableModule(SD_SPI_BASE);
}

/*-----------------------------------------------------------------------*/
/* Initialize Disk Drive                                                 */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (
    BYTE drv        /* Physical drive nmuber (0) */
)
{
    BYTE n, ty, ocr[4];

    if (drv) return STA_NOINIT;            /* Supports only single drive */
    if (Stat & STA_NODISK) return Stat;    /* No card in the socket */

    set_init_speed();

    power_on();                            /* Force socket power on */
    send_initial_clock_train();   // EDIT tschalch        /* Ensure the card is in SPI mode */

    // EDIT tschalch
    SELECT();                /* CS = L */

    ty = 0;
    if (send_cmd(CMD0, 0) == 1) {            /* Enter Idle state */
        Timer1 = 100;                        /* Initialization timeout of 1000 msec */
        if (send_cmd(CMD8, 0x1AA) == 1) {    /* SDC Ver2+ */
            for (n = 0; n < 4; n++) ocr[n] = rcvr_spi();
            if (ocr[2] == 0x01 && ocr[3] == 0xAA) {    /* The card can work at vdd range of 2.7-3.6V */
                do {
                		DESELECT();								// EDIT tschalch
                		xmit_spi(0xFF);							// EDIT tschalch
                		SELECT();								// EDIT tschalch
                    if (send_cmd(CMD55, 0) <= 1 && send_cmd(CMD41, 1UL << 30) == 0)    break;    /* ACMD41 with HCS bit */
            			//dly_us(1000);
                } while (Timer1);
                if (Timer1 && send_cmd(CMD58, 0) == 0) {    /* Check CCS bit */
                    for (n = 0; n < 4; n++) ocr[n] = rcvr_spi();
                    ty = (ocr[0] & 0x40) ? 6 : 2;
                }
            }
        } else {                            /* SDC Ver1 or MMC */
            ty = (send_cmd(CMD55, 0) <= 1 && send_cmd(CMD41, 0) <= 1) ? 2 : 1;    /* SDC : MMC */
            do {
                if (ty == 2) {
                    if (send_cmd(CMD55, 0) <= 1 && send_cmd(CMD41, 0) == 0) break;    /* ACMD41 */
            			dly_us(1000);
                } else {
                    if (send_cmd(CMD1, 0) == 0) break;    /* CMD1 */
            			dly_us(1000);
                }
            } while (Timer1);
            if (!Timer1 || send_cmd(CMD16, 512) != 0)    /* Select R/W block length */
                ty = 0;
        }
    }
    CardType = ty;
    DESELECT();            /* CS = H */
    rcvr_spi();            /* Idle (Release DO) */

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
    rcvr_spi();            /* Idle (Release DO) */

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
    rcvr_spi();            /* Idle (Release DO) */

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
        rcvr_spi();            /* Idle (Release DO) */
    }
    return res;
}



/*-----------------------------------------------------------------------*/
/* Device Timer Interrupt Procedure  (Platform dependent)                */
/*-----------------------------------------------------------------------*/
/* This function must be called in period of 10ms                        */

void disk_timerproc (void)
{
    BYTE n;

    n = Timer1;                        /* 100Hz decrement timer */
    if (n) Timer1 = --n;
    n = Timer2;
    if (n) Timer2 = --n;
}

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
