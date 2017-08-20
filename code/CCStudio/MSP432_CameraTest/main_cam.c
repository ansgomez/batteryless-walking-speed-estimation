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

#include "adc.h"
#include "camera.h"

/// select camera acquisition mode: 0 software based, 1 hardware supported low power method
#define CAMERA_LPM 1

/// select if the camera is turned off between two acquisitions (only makes sense with timed capture)
/// 0: no shutdown, 1: image sensor shutdown, 2: high side MOSFET switch
#define CAMERA_POWERDOWN 0

/// Number of images to capture before entering deep sleep
#define CAPTURE_ITERATIONS 3

/// select if UART is used to send the images (1) or not (0)
#define UART_SEND 1

/// select if a GPIO pin should be used to indicate capture (high when active)
#define CAPTURE_INDICATOR 0

/// persistent memory for camera image
#pragma PERSISTENT( image_buffer )
uint16_t image_buffer[112][112] = { 0 };

#define GPIO_PORT_START_BUTTON		GPIO_PORT_P1
#define GPIO_PIN_START_BUTTON		GPIO_PIN1

// SD Card Test: Command Ready
uint8_t gucCommandReady = 0;



/* DMA Control Table */
#ifdef ewarm
#pragma data_alignment=256
#else
#pragma DATA_ALIGN(controlTable, 256)
#endif
uint8_t controlTable[256];


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

	/* Halting WDT and disabling master interrupts */
	WDTCTL = WDTPW | WDTHOLD;                 // Stop WDT

	SystemInit();
	SystemCoreClockUpdate();

	// configure button S1 input pin
	GPIO_setAsInputPinWithPullUpResistor(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON);

#if UART_SEND > 0
	/* Initialize serial UART */
	Serial_init();
#endif

	//printf("SMCLK = %d\n", CS_getSMCLK());

	/* Initialize SPI for SD card */
	//SDcard_SPI_init();

	// setup camera
	Camera_init();

#if CAMERA_POWERDOWN < 2

	// power up peripherals
	Camera_enable();

	// configure devices
	Camera_configure(CAMERA_NBIAS, CAMERA_AOBIAS, CAMERA_GAIN, CAMERA_VREF);

# if CAMERA_POWERDOWN > 0
	Camera_turnPowerOff();
# endif
#endif

	Camera_setupADC();

# if CAMERA_POWERDOWN > 0
	ADC14->CTL0 &= ~(ADC14_CTL0_ON);
	ADC_turnReferenceOff();
#endif

	// wait for trigger on button input
	while (GPIO_getInputPinValue(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON)
			== GPIO_INPUT_PIN_HIGH) {
		continue;
	}

	// Start Camera Operation
#if CAMERA_POWERDOWN == 1
		// TODO recativate ADC??
		ADC_turnReferenceOn();
		Camera_turnPowerOn(CAMERA_GAIN);
#endif
#if CAMERA_POWERDOWN == 2
		Camera_enable();
		Camera_configure(CAMERA_NBIAS, CAMERA_AOBIAS, CAMERA_GAIN, CAMERA_VREF);
#endif

#if CAMERA_LPM > 0
	    /* Zero Filling the Destination */
	    memset(image_buffer, 0x00, CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW);



//	    /* Setting reference voltage to 2.5  and enabling reference */
//	    MAP_REF_A_setReferenceVoltage(REF_A_VREF2_5V);
//	    MAP_REF_A_enableReferenceVoltage();
//
//	    /* Initializing ADC (MCLK/1/1) */
//	    MAP_ADC14_enableModule();
//	    MAP_ADC14_initModule(ADC_CLOCKSOURCE_SMCLK, ADC_PREDIVIDER_1, ADC_DIVIDER_1, 0);
//
//	    /* Configuring GPIOs for Analog In */
//	    MAP_GPIO_setAsPeripheralModuleFunctionInputPin(CAMERA_PORT_ANALOG, CAMERA_PIN_ANALOG, GPIO_TERTIARY_MODULE_FUNCTION);
//
//	    /* Configuring ADC Memory (ADC_MEM0 - ADC_MEM7 (A0 - A1)  with no repeat)
//	     * with internal 2.5v reference */
//	    ADC14_configureSingleSampleMode(ADC_MEM11, true);
//	    ADC14_configureConversionMemory(ADC_MEM11,
//	            ADC_VREFPOS_INTBUF_VREFNEG_VSS,
//	            ADC_INPUT_A11, false);
//
//	    /* Configuring DMA module */
//	    MAP_DMA_enableModule();
//	    MAP_DMA_setControlBase(controlTable);
//
//	    /*
//	     * Primary DMA Channel, ADC12C
//	     * Size = 16bits
//	     * Source Increment = 16bits
//	     * Destination Increment = 16bits
//	     * Arbitration = 1 , no other sources
//	     */
//
//	    MAP_DMA_setChannelControl(UDMA_PRI_SELECT | DMA_CH7_ADC14,
//	        UDMA_SIZE_16 | UDMA_SRC_INC_NONE | UDMA_DST_INC_16 | UDMA_ARB_1);
//
//	    MAP_DMA_setChannelTransfer(UDMA_PRI_SELECT | DMA_CH7_ADC14,
//	        UDMA_MODE_AUTO, (void*) &ADC14->MEM[11],
//			image_buffer,
//			1024);
//
//	    /* Assigning/Enabling Interrupts */
//	    MAP_DMA_assignInterrupt(DMA_INT1, 7);
//	    MAP_Interrupt_enableInterrupt(INT_DMA_INT1);
//	    MAP_DMA_assignChannel(DMA_CH7_ADC14);
//	    MAP_DMA_clearInterruptFlag(7);
//	    MAP_Interrupt_enableMaster();
//
//	    /* Now that the DMA is primed and setup, enabling the channels. The ADC14
//	     * hardware should take over and transfer/receive all bytes.The DMA is
//	     * triggered after the conversion in single-channel conversion mode or
//	     * after the completion of a sequence of channel conversions in
//	     * sequence-ofchannels conversion mode. */
//	    MAP_DMA_enableChannel(7);
//
//	    /* Setting up the sample timer to automatically step through the sequence
//	     * convert.
//	     */
//	    ADC14_enableSampleTimer(ADC_AUTOMATIC_ITERATION);
//
//	    /* Triggering the start of the sample */
//	    MAP_ADC14_enableConversion();
//	    MAP_ADC14_toggleConversionTrigger();



		// start low power image aquisition and enter low power mode
		Camera_startAquire(*image_buffer);

		while(Camera_isBusy()) {
			continue;
		}

		//__bis_SR_register(LPM0_bits | GIE);

		// disable DMA transfer
		//DMA1CTL &= ~(DMAEN);
#else
		// acquire an image from the sensor
		Camera_readImage(*image_buffer);
#endif

#if CAMERA_POWERDOWN == 1
		Camera_turnPowerOff();
		ADC_turnReferenceOff();
#elif CAMERA_POWERDOWN == 2
		Camera_disable();
#endif

#if UART_SEND > 0
		// send image over serial
		uint8_t row = 0;
		uint8_t col = 0;
		for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
			for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
				// higher 4 bits
				Serial_sendChar((char) (image_buffer[row][col] >> 8));

				// lower 8 bits
				Serial_sendChar((char) (image_buffer[row][col] & 0xff));
			}
		}
#endif

	// turn camera off
	Camera_turnPowerOff();
//	Camera_disable();

	// ADC off
	ADC14->CTL0 = 0;

#if UART_SEND > 0
	// UART off
	EUSCI_A_UART_disable(EUSCI_A0_BASE);
#endif

}
