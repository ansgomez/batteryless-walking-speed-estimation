#include <stdint.h>

#include "driverlib.h"

#include "cypress_fram.h"

/**
 * Transceive data over the SPI interface.
 * @param base_address Device base address
 * @param data The byte to transmit
 * @return The reveived byte
 */

extern uint8_t controlTable[256];
extern uint32_t clock_frequency;

volatile bool DMA_FRAM_stop;


uint8_t SPI_transceive(uint32_t base_address, uint8_t data) {
	// SPI_clearInterruptFlag(base_address, EUSCI_A_SPI_RECEIVE_INTERRUPT);
    EUSCI_A_CMSIS(base_address)->IFG &= ~(EUSCI_A_SPI_RECEIVE_INTERRUPT);

    // SPI_transmitData(base_address, data);
    EUSCI_A_CMSIS(base_address)->TXBUF = data;

	// wait until trasmission complete
	// while (!SPI_getInterruptStatus(base_address, EUSCI_A_SPI_RECEIVE_INTERRUPT)) {
	while (!(EUSCI_A_CMSIS(base_address)->IFG & EUSCI_A_SPI_RECEIVE_INTERRUPT) ) {
		continue;
	}

	// data = SPI_receiveData(base_address);
	data = EUSCI_A_CMSIS(base_address)->RXBUF;
	return data;
}



/**
 * Initialize the external FRAM interface.
 */
void EXTFRAM_init() {
	// configure SPI as master
	eUSCI_SPI_MasterConfig spi_init_struct = {
		.selectClockSource = EUSCI_A_SPI_CLOCKSOURCE_SMCLK,
		.clockSourceFrequency = clock_frequency,						// SMCLK
		.desiredSpiClock = FRAM_SPI_FREQUENCY,
		.msbFirst = EUSCI_A_SPI_MSB_FIRST,
		.clockPhase = EUSCI_A_SPI_PHASE_DATA_CAPTURED_ONFIRST_CHANGED_ON_NEXT,
		.clockPolarity = EUSCI_A_SPI_CLOCKPOLARITY_INACTIVITY_LOW,
		.spiMode = EUSCI_A_SPI_3PIN,
	};

	if ( clock_frequency < FRAM_SPI_FREQUENCY ) {
		spi_init_struct.desiredSpiClock = clock_frequency;
	}

	SPI_initMaster(FRAM_SPI_PERIPHERAL, &spi_init_struct);

	// enable SPI
	SPI_enableModule(FRAM_SPI_PERIPHERAL);
}

/**
 * Initialize GPIOs used for FRAM interface.
 */
void EXTFRAM_initGPIO(void) {
	// configure non interface control pins
	GPIO_setAsOutputPin(FRAM_PORT_CS, FRAM_PIN_CS);
	GPIO_setAsOutputPin(FRAM_PORT_POWER, FRAM_PIN_POWER);

	// set interface to power down state
	EXTFRAM_powerOff();
}

/**
 * Enable power supply of external FRAM chip.
 */
void EXTFRAM_powerOn(void) {

	// power on
	GPIO_setOutputHighOnPin(FRAM_PORT_POWER, FRAM_PIN_POWER);

	// configure GPIO for SPI interface, set CS high
	GPIO_setOutputHighOnPin(FRAM_PORT_CS, FRAM_PIN_CS);
	// configure SPI pins
	GPIO_setAsPeripheralModuleFunctionOutputPin(FRAM_PORT_CLK, FRAM_PIN_CLK,
			GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionOutputPin(FRAM_PORT_MOSI, FRAM_PIN_MOSI,
			GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionInputPin(FRAM_PORT_MISO, FRAM_PIN_MISO,
			GPIO_PRIMARY_MODULE_FUNCTION);

	// Wait at minimum 250 µs according to datasheet
	// clock_frequency>>12 = clock_frequency/2^12 = clock_frequency/4096 ~= clock_frequency/1000000 * 244
	uint32_t n = clock_frequency >> 12;
	while (n) {
		__delay_cycles(1);
		n--;
	}
}

/**
 * Disable power supply of external FRAM chip.
 */
void EXTFRAM_powerOff(void) {
	// configure output
	GPIO_setAsOutputPin(FRAM_PORT_CLK, FRAM_PIN_CLK);
	GPIO_setAsOutputPin(FRAM_PORT_MOSI, FRAM_PIN_MOSI);
	GPIO_setAsOutputPin(FRAM_PORT_MISO, FRAM_PIN_MISO);

	// set outputs low
	GPIO_setOutputLowOnPin(FRAM_PORT_POWER, FRAM_PIN_POWER);
	GPIO_setOutputLowOnPin(FRAM_PORT_CLK, FRAM_PIN_CLK);
	GPIO_setOutputLowOnPin(FRAM_PORT_MOSI, FRAM_PIN_MOSI);
	GPIO_setOutputLowOnPin(FRAM_PORT_MISO, FRAM_PIN_MISO);
	GPIO_setOutputLowOnPin(FRAM_PORT_CS, FRAM_PIN_CS);
}

/**
 * Read data form external FRAM.
 * @param address The address of the memory location where the first byte to
 * read is stored (byte addressed)
 * @param data The local data buffer where the read data is written to
 * @param count The number of bytes to read
 * @return The number of bytes read from external memory
 */
uint32_t EXTFRAM_read(uint32_t address, void* data, uint32_t count) {
	uint8_t* data_ptr = (uint8_t*)data;

	DMA_FRAM_stop = false;

	// CS low
	GPIO_setOutputLowOnPin(FRAM_PORT_CS, FRAM_PIN_CS);

	// 1. transmit read command
	SPI_transceive(FRAM_SPI_PERIPHERAL, FRAM_CMD_READ);

	// 2. transmit 3 byte read address, MSB first
	SPI_transceive(FRAM_SPI_PERIPHERAL, (address >> 16) & 0xff);
	SPI_transceive(FRAM_SPI_PERIPHERAL, (address >> 8) & 0xff);
	SPI_transceive(FRAM_SPI_PERIPHERAL, address & 0xff);

#if FRAM_USE_DMA > 0

	uint8_t dummy = FRAM_SPI_DUMMY_MESSAGE;

    /* Configuring DMA module */
    DMA_enableModule();
    DMA_setControlBase(controlTable);

    /* Assigning Channel 2 to EUSCIA1TX and
     * enabling channel 2 */
    DMA_assignChannel(DMA_CH2_EUSCIA1TX);
    DMA_assignChannel(DMA_CH3_EUSCIA1RX);

     /* Disabling channel attributes */
    DMA_disableChannelAttribute(DMA_CH2_EUSCIA1TX,
                                     UDMA_ATTR_ALTSELECT | UDMA_ATTR_USEBURST |
                                     UDMA_ATTR_HIGH_PRIORITY |
                                     UDMA_ATTR_REQMASK);
    DMA_disableChannelAttribute(DMA_CH3_EUSCIA1RX,
                                     UDMA_ATTR_ALTSELECT | UDMA_ATTR_USEBURST |
                                     UDMA_ATTR_HIGH_PRIORITY |
                                     UDMA_ATTR_REQMASK);

    /* Setting Control Indexes */
    DMA_setChannelControl(UDMA_PRI_SELECT | DMA_CH2_EUSCIA1TX,
            UDMA_SIZE_8 | UDMA_SRC_INC_NONE | UDMA_DST_INC_NONE | UDMA_ARB_1);
    DMA_setChannelControl(UDMA_PRI_SELECT | DMA_CH3_EUSCIA1RX,
            UDMA_SIZE_8 | UDMA_SRC_INC_NONE | UDMA_DST_INC_8 | UDMA_ARB_1);

	uint32_t i = 0;
    while ( i < count ) {

    		if ( count-i > 10 ) {			// more than 10 items left?

    			if ( count-i > 1024 ) {
    				DMA_setChannelTransfer(UDMA_PRI_SELECT | DMA_CH2_EUSCIA1TX,
    						UDMA_MODE_BASIC, (void*) &dummy,
    						(void*) SPI_getTransmitBufferAddressForDMA(EUSCI_A1_BASE), 1024);
    				DMA_setChannelTransfer(UDMA_PRI_SELECT | DMA_CH3_EUSCIA1RX,
    						UDMA_MODE_BASIC, (void*) SPI_getReceiveBufferAddressForDMA(EUSCI_A1_BASE),
							(void*) &data_ptr[i],
							1024);
				i += 1024;
    			} else {
    				DMA_setChannelTransfer(UDMA_PRI_SELECT | DMA_CH2_EUSCIA1TX,
    						UDMA_MODE_BASIC, (void*) &dummy,
    						(void*) SPI_getTransmitBufferAddressForDMA(EUSCI_A1_BASE), (count-i));
    				DMA_setChannelTransfer(UDMA_PRI_SELECT | DMA_CH3_EUSCIA1RX,
    						UDMA_MODE_BASIC, (void*) SPI_getReceiveBufferAddressForDMA(EUSCI_A1_BASE),
							(void*) &data_ptr[i],
							(count-i));
    				i = count;
    			}

    			/* Assigning/Enabling Interrupts */
        		Interrupt_unpendInterrupt(INT_DMA_INT1);
    			Interrupt_enableInterrupt(INT_DMA_INT1);
    			Interrupt_enableMaster();

			/* Now that the DMA is primed and setup, enabling the channels. The EUSCI
			 * hardware should take over and transfer/receive all bytes */
    			DMA_enableChannel(3);
    			DMA_enableChannel(2);

    			/* Assigning/Enabling Interrupts */
    			DMA_assignInterrupt(DMA_INT1, 3);
    			DMA_enableInterrupt(INT_DMA_INT1);

			PCM_gotoLPM0InterruptSafe();
			while(!DMA_FRAM_stop);

    		} else {
    			// Receive one byte without DMA
    		    EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->IFG &= ~(EUSCI_A_SPI_RECEIVE_INTERRUPT);
    		    EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->TXBUF = FRAM_SPI_DUMMY_MESSAGE;
    			// wait until trasmission complete
    			while (!(EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->IFG & EUSCI_A_SPI_RECEIVE_INTERRUPT) ) {
    				continue;
    			}
    			data_ptr[i++] = EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->RXBUF;
    		}
    }

    DMA_disableModule();

#else

	// 3. receive data
	uint32_t i = 0;
	while(i < count) {

		// This is faster than directly calling the function SPI_transceive:
		// data_ptr[i++] = SPI_transceive(FRAM_SPI_PERIPHERAL, FRAM_SPI_DUMMY_MESSAGE);

	    EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->IFG &= ~(EUSCI_A_SPI_RECEIVE_INTERRUPT);
	    EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->TXBUF = FRAM_SPI_DUMMY_MESSAGE;
		// wait until trasmission complete
		while (!(EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->IFG & EUSCI_A_SPI_RECEIVE_INTERRUPT) ) {
			continue;
		}
		data_ptr[i++] = EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->RXBUF;
	}
#endif

	// CS high
	GPIO_setOutputHighOnPin(FRAM_PORT_CS, FRAM_PIN_CS);

	return i;
}

/**
 * Write data to external FRAM.
 * @param address The address of the memory location where the first byte is written to (byte addressed)
 * @param data The local data to write to external memory
 * @param count The number of bytes to write
 * @return The number of bytes written to the external memory
 */
uint32_t EXTFRAM_write(uint32_t address, const void* data, uint32_t count) {
	const uint8_t* data_ptr = (uint8_t*)data;

	DMA_FRAM_stop = false;

	// CS low
	GPIO_setOutputLowOnPin(FRAM_PORT_CS, FRAM_PIN_CS);

	// 1. transmit write enable command
	SPI_transceive(FRAM_SPI_PERIPHERAL, FRAM_CMD_WREN);

	// 2. confirm write enable by pulling CS high for a short period
	GPIO_setOutputHighOnPin(FRAM_PORT_CS, FRAM_PIN_CS);
	GPIO_setOutputLowOnPin(FRAM_PORT_CS, FRAM_PIN_CS);

	// 3. transmit write command
	SPI_transceive(FRAM_SPI_PERIPHERAL, FRAM_CMD_WRITE);

	// 4. transmit 3 byte write address, MSB first
	SPI_transceive(FRAM_SPI_PERIPHERAL, (address >> 16) & 0xff);
	SPI_transceive(FRAM_SPI_PERIPHERAL, (address >> 8) & 0xff);
	SPI_transceive(FRAM_SPI_PERIPHERAL, address & 0xff);

#if FRAM_USE_DMA > 0

    /* Configuring DMA module */
    DMA_enableModule();
    DMA_setControlBase(controlTable);

    /* Assigning Channel 2 to EUSCIA1TX and
     * enabling channel 2 */
    DMA_assignChannel(DMA_CH2_EUSCIA1TX);

     /* Disabling channel attributes */
    DMA_disableChannelAttribute(DMA_CH2_EUSCIA1TX,
                                     UDMA_ATTR_ALTSELECT | UDMA_ATTR_USEBURST |
                                     UDMA_ATTR_HIGH_PRIORITY |
                                     UDMA_ATTR_REQMASK);

    /* Setting Control Indexes */
    DMA_setChannelControl(UDMA_PRI_SELECT | DMA_CH2_EUSCIA1TX,
            UDMA_SIZE_8 | UDMA_SRC_INC_8 | UDMA_DST_INC_NONE | UDMA_ARB_1);

	uint32_t i = 0;
    while ( i < count ) {

    		if ( count-i > 10 ) {			// more than 10 items left?

    			if ( count-i > 1024 ) {
				DMA_setChannelTransfer(UDMA_PRI_SELECT | DMA_CH2_EUSCIA1TX,
						UDMA_MODE_BASIC, (void*) &data_ptr[i],
						(void*) SPI_getTransmitBufferAddressForDMA(EUSCI_A1_BASE), 1024);
				i += 1024;
    			} else {
    				DMA_setChannelTransfer(UDMA_PRI_SELECT | DMA_CH2_EUSCIA1TX,
    						UDMA_MODE_BASIC, (void*) &data_ptr[i],
    						(void*) SPI_getTransmitBufferAddressForDMA(EUSCI_A1_BASE), (count-i) );
    				i = count;
    			}

    			/* Assigning/Enabling Interrupts */
    			Interrupt_unpendInterrupt(INT_DMA_INT1);
    			Interrupt_enableInterrupt(INT_DMA_INT1);
    			Interrupt_enableMaster();

			/* Now that the DMA is primed and setup, enabling the channels. The EUSCI
			 * hardware should take over and transfer/receive all bytes */
			DMA_enableChannel(2);

			/* Assigning/Enabling Interrupts */
			DMA_assignInterrupt(DMA_INT1, 2);
			DMA_enableInterrupt(INT_DMA_INT1);

			PCM_gotoLPM0InterruptSafe();
			while(!DMA_FRAM_stop);

    		} else {
    			// Transmit one byte without DMA
    		    EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->IFG &= ~(EUSCI_A_SPI_RECEIVE_INTERRUPT);
    		    EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->TXBUF = data_ptr[i++];
    			// wait until trasmission complete
    			while (!(EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->IFG & EUSCI_A_SPI_RECEIVE_INTERRUPT) ) {
    				continue;
    			}
    		}
    }

    DMA_disableModule();

#else

    // 5. transmit the register values to set
	uint32_t i = 0;
	while(i < count) {
		// If SPI is run at speed CS_getSMCLK(), we do not need to check the interrupts,
		// because the transmission is faster than the CPU...
		// use SPI_transceive(FRAM_SPI_PERIPHERAL, data_ptr[i++]) for lower speeds!
	    // EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->TXBUF = data_ptr[i++];

	    EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->IFG &= ~(EUSCI_A_SPI_RECEIVE_INTERRUPT);
	    EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->TXBUF = data_ptr[i++];
		// wait until trasmission complete
		while (!(EUSCI_A_CMSIS(FRAM_SPI_PERIPHERAL)->IFG & EUSCI_A_SPI_RECEIVE_INTERRUPT) ) {
			continue;
		}
	}
#endif

    // CS high
	GPIO_setOutputHighOnPin(FRAM_PORT_CS, FRAM_PIN_CS);

	return i;
}

/**
 * Set the external FRAM to sleep mode.
 * @note This will introduce a delay on the next commmand that needs to be
 * handeled manually.
 */
void EXTFRAM_sleep(void) {
	// CS low
	GPIO_setOutputLowOnPin(FRAM_PORT_CS, FRAM_PIN_CS);

	// 1. transmit write enable command
	SPI_transceive(FRAM_SPI_PERIPHERAL, FRAM_CMD_SLEEP);

	// CS high
	GPIO_setOutputHighOnPin(FRAM_PORT_CS, FRAM_PIN_CS);
}

/**
 * Trigger a wakeup of the external FRAM when in sleep mode.
 * @note Delay needs to be added manually after wakeup trigger to guarantee
 * reliable operation.
 */
void EXTFRAM_wakeup(void) {
	// toggle CS
	GPIO_setOutputLowOnPin(FRAM_PORT_CS, FRAM_PIN_CS);
	GPIO_setOutputHighOnPin(FRAM_PORT_CS, FRAM_PIN_CS);
}


/* Completion interrupt for DMA */
void DMA_INT1_FRAM_IRQHandler(void)
{
    /* Disabling the completion interrupt and disabling the DMA channels */
	DMA_disableChannel(2);
	DMA_disableChannel(3);
	DMA_disableChannel(0);
	DMA_disableChannel(1);

    Interrupt_disableInterrupt(INT_DMA_INT2);
    DMA_disableInterrupt(INT_DMA_INT2);
    Interrupt_disableInterrupt(INT_DMA_INT1);
    DMA_disableInterrupt(INT_DMA_INT1);

    // IMPORTANT: Unpending the interrupt seems to be necessary, such that
    // an interrupt is not automatically triggered the next time it is used...
    Interrupt_unpendInterrupt(INT_DMA_INT1);
    Interrupt_unpendInterrupt(INT_DMA_INT2);

	//Interrupt_enableMaster();

    DMA_FRAM_stop = true;
}
