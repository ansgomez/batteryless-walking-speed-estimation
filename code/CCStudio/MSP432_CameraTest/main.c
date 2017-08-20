/******************************************************************************
 * MSP432 Ceneye Camera
 *
 * Author: Thomas Schalch, ETHZ, 2016
 *******************************************************************************/

/* DriverLib Includes */
#include "driverlib.h"

/* Standard Includes */
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include "serial.h"

#include "utils/ff.h"
#include "utils/diskio.h"
#include "sd_diskio.h"
#include "sd_cmd.h"

#include "cypress_fram.h"

uint8_t gucCommandReady = 0;




/*
 * USCIA0 interrupt handler.
 */
void EusciA0_ISR(void) {
	int16_t receiveByte = UCA0RXBUF;
	static uint32_t ui32Count = 0;
	static int8_t bLastWasCR = 0;

	// See if the backspace key was pressed.
	if (receiveByte == '\b') {
		// If there are any characters already in the buffer, then delete
		// the last.
		if (ui32Count) {
			// Rub out the previous character.
			printf("\b");

			// Decrement the number of characters in the buffer.
			ui32Count--;
		}
	}

	// If this character is LF and last was CR, then just gobble up the
	// character because the EOL processing was taken care of with the CR.
	if ((receiveByte == '\n') && bLastWasCR) {
		//   bLastWasCR = 0;
	}

	// See if a newline or escape character was received.
	if ((receiveByte == '\r') || (receiveByte == '\n')
			|| (receiveByte == 0x1b)) {
		// If the character is a CR, then it may be followed by a LF which
		// should be paired with the CR.  So remember that a CR was
		// received.
		if (receiveByte == '\r') {
			//	bLastWasCR = 1;
		}

		// Reset the count.
		ui32Count = 0;

		gucCommandReady = 1;
		// Stop processing the input and end the line.
		return;
	}

	// Process the received character as long as we are not at the end of
	// the buffer.  If the end of the buffer has been reached then all
	// additional characters are ignored until a newline is received.
	if (ui32Count < sizeof(g_pcCmdBuf)) {
		// Store the character in the caller supplied buffer.
		g_pcCmdBuf[ui32Count] = receiveByte;

		// Increment the count of characters received.
		ui32Count++;

		/* Echo the character back. */
		EUSCI_A_UART_transmitData(EUSCI_A0_BASE, receiveByte);
	}

}

int main(void) {

	int8_t lucNStatus = 0;
	FRESULT iFResult;

	/* Halting WDT and disabling master interrupts */
	WDTCTL = WDTPW | WDTHOLD;                 // Stop WDT

	SystemInit();
	SystemCoreClockUpdate();

	/* Selecting P1.0 as output (LED). */
	//GPIO_setAsPeripheralModuleFunctionInputPin(GPIO_PORT_P1, GPIO_PIN0, GPIO_PRIMARY_MODULE_FUNCTION);
	//GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
	//GPIO_setAsOutputPin(GPIO_PORT_P1, GPIO_PIN0);

	/* Initialize serial UART */
	Serial_init();

	/* Initialize SPI for SD card */
	SDcard_SPI_init();

	/* FRAM TEST */
	EXTFRAM_init();
	EXTFRAM_initGPIO();
	EXTFRAM_powerOn();

	uint32_t FRAM_address = 0x00000000;
	uint16_t FRAM_data_length = 16;

	uint8_t databuffer[16] = { 0 };
	uint8_t i;
	printf("Write Data into FRAM: ");
	for (i = 0; i < 16; i++) {
		databuffer[i] = i << 2;
		//EXTFRAM_write(FRAM_address++, &databuffer[row], 1);
		printf("%d ", databuffer[i]);
	}

	EXTFRAM_write(FRAM_address, databuffer, FRAM_data_length);

	for (i = 0; i < 16; i++) {
		databuffer[i] = 0;
	}
	printf("\nRead Data from FRAM:  ");

	FRAM_address = 0x00000000;
	FRAM_data_length = 16;
	uint8_t dataread[16] = { 0 };
	//uint16_t temp = 0;
	EXTFRAM_read(FRAM_address, dataread, FRAM_data_length);

	for (i = 0; i < 16; i++) {
		// lower 8 bits
		printf("%d ", dataread[i]);
		//EXTFRAM_read(FRAM_address++, &temp, 1);
		//Serial_sendChar((char) (temp & 0xff));
	}


	/* END FRAM Test */


	// Print hello message to user.
	printf("\n\nSD Card Example Program\r\n");
	printf("Type \'help\' for help.\r\n");


    /* Register work area (do not care about error) */
	// Mount the file system, using logical disk 0.
	iFResult = f_mount(0, &g_sFatFs);
	//iFResult = f_mount(&g_sFatFs, "", 0);
	if (iFResult != FR_OK) {
		printf("f_mount error: %s\n", StringFromFResult(iFResult));
		return (1);
	}

    /* Create FAT volume with default cluster size */
    //iFResult = f_mkfs(0, 0, 0);
	//if (iFResult != FR_OK) {
	//	printf("f_mkfs error: %s\n", StringFromFResult(iFResult));
	//}

    UINT bw;       /* Bytes written */


	if (f_open(&g_sFileObject, "newfile.txt", FA_WRITE | FA_CREATE_ALWAYS) == FR_OK) {	/* Create a file */

		f_write(&g_sFileObject, "It works!\r\n", 11, &bw);	/* Write data to the file */

		f_close(&g_sFileObject);								/* Close the file */

		if (bw == 11) {		/* Lights green LED if data written well */
			printf("YESS!");
		} else {
			printf("Leider nein");
		}
	}


	if (f_open(&g_sFileObject, "newfile.txt", FA_WRITE | FA_CREATE_ALWAYS) == FR_OK) {	/* Create a file */

		f_write(&g_sFileObject, "It works!\r\n", 11, &bw);	/* Write data to the file */

		f_close(&g_sFileObject);								/* Close the file */

		if (bw == 11) {		/* Lights green LED if data written well */
			printf("YESS!");
		} else {
			printf("Leider nein");
		}
	}


	// Mount the file system, using logical disk 0.
	iFResult = f_mount(0, &g_sFatFs);
	//iFResult = f_mount(&g_sFatFs, "", 0);
	if (iFResult != FR_OK) {
		printf("f_mount error: %s\n", StringFromFResult(iFResult));
		return (1);
	}

	/* Main while loop */
	//MAP_PCM_gotoLPM0();
	while (1) {
		if (gucCommandReady) {
			// Pass the line from the user to the command processor.  It will be
			// parsed and valid commands executed.
			lucNStatus = CmdLineProcess(g_pcCmdBuf);

			/* Clear the command buffer, to prep for the next one. */
			memset(g_pcCmdBuf, 0x00, sizeof(g_pcCmdBuf));

			// Handle the case of bad command.
			if (lucNStatus == CMDLINE_BAD_CMD) {
				printf("Bad or no command!\r\n");
			}

			// Handle the case of too many arguments.
			else if (lucNStatus == CMDLINE_TOO_MANY_ARGS) {
				printf("Too many arguments for command processor!\r\n");
			}

			// Otherwise the command was executed.  Print the error code if one was
			// returned.
			else if (lucNStatus != 0) {
				printf("Command returned error code %s\r\n",
						StringFromFResult((FRESULT) lucNStatus));
			}

			printf(">");
			gucCommandReady = 0;
		}
	}
}
