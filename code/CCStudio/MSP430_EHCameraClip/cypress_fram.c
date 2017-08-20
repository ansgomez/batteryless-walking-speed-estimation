#include <stdint.h>

#include "driverlib.h"

#include "clock.h"
#include "spi.h"

#include "cypress_fram.h"

/**
 * Initialize the external FRAM interface.
 */
void EXTFRAM_init(void) {
	// configure SPI as master
	EUSCI_A_SPI_initMasterParam spi_init_struct = {
			.selectClockSource = EUSCI_A_SPI_CLOCKSOURCE_SMCLK,
			.clockSourceFrequency = SMCLK_Freq,
			.desiredSpiClock = SMCLK_Freq,
			.msbFirst = EUSCI_A_SPI_MSB_FIRST,
			.clockPhase = EUSCI_A_SPI_PHASE_DATA_CAPTURED_ONFIRST_CHANGED_ON_NEXT,
			.clockPolarity = EUSCI_A_SPI_CLOCKPOLARITY_INACTIVITY_LOW,
			.spiMode = EUSCI_A_SPI_3PIN,
	};
	EUSCI_A_SPI_initMaster(FRAM_SPI_PERIPHERAL, &spi_init_struct);

	// enable SPI
	EUSCI_A_SPI_enable(FRAM_SPI_PERIPHERAL);
}

/**
 * Initialize GPIOs used for FRAM interface. Chip is in power down mode after this.
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
	GPIO_setAsPeripheralModuleFunctionOutputPin(FRAM_PORT_CLK, FRAM_PIN_CLK,
	GPIO_SECONDARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionOutputPin(FRAM_PORT_MOSI, FRAM_PIN_MOSI,
	GPIO_SECONDARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionInputPin(FRAM_PORT_MISO, FRAM_PIN_MISO,
	GPIO_SECONDARY_MODULE_FUNCTION);

	// do wait for another 150us to get required 250us power-up delay
	for (uint16_t i = 450; i > 0; i--) {
		_nop();
	}
}

/**
 * Disable power supply of external FRAM chip.
 */
void EXTFRAM_powerOff(void) {
	// set GPIO set interface output and low
	GPIO_setAsOutputPin(FRAM_PORT_CLK, FRAM_PIN_CLK);
	GPIO_setAsOutputPin(FRAM_PORT_MOSI, FRAM_PIN_MOSI);
	GPIO_setAsOutputPin(FRAM_PORT_MISO, FRAM_PIN_MISO);

	// power down chip
	GPIO_setOutputLowOnPin(FRAM_PORT_POWER, FRAM_PIN_POWER);

	// set interface as outputs low
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
uint16_t EXTFRAM_read(uint32_t address, void* data, uint16_t count) {
	uint8_t dummy_data = FRAM_SPI_DUMMY_MESSAGE;
	uint8_t* data_ptr = (uint8_t*) data;

	// CS low
	GPIO_setOutputLowOnPin(FRAM_PORT_CS, FRAM_PIN_CS);

	// 1. transmit read command
	SPI_transceive(FRAM_SPI_PERIPHERAL, FRAM_CMD_READ);

	// 2. transmit 3 byte read address, MSB first
	SPI_transceive(FRAM_SPI_PERIPHERAL, (address >> 16) & 0xff);
	SPI_transceive(FRAM_SPI_PERIPHERAL, (address >> 8) & 0xff);
	SPI_transceive(FRAM_SPI_PERIPHERAL, address & 0xff);

	// 3. receive data, using DMA

	// set trigger from SPI
	DMACTL0 = DMA0TSEL__UCA1RXIFG;
	DMACTL1 = DMA2TSEL__UCA1TXIFG;

	// set source addresses
	__data16_write_addr((uint16_t) &DMA0SA, EUSCI_A_SPI_getReceiveBufferAddress(FRAM_SPI_PERIPHERAL));
	__data16_write_addr((uint16_t) &DMA0DA, (uint32_t) &(data_ptr[1]));
	__data16_write_addr((uint16_t) &DMA2SA, (uint32_t) &dummy_data);
	__data16_write_addr((uint16_t) &DMA2DA,	EUSCI_A_SPI_getTransmitBufferAddress(FRAM_SPI_PERIPHERAL));

	// set transfer size to image size
	DMA0SZ = count - 1;
	DMA2SZ = count - 1;

	// congifure DMA: single mode, increasing destination address for receive, byte transfer
	// interrupt clear and enable
	DMA0CTL = DMADT_0 | DMADSTINCR_3 | DMADSTBYTE | DMASRCBYTE | DMAIE | DMAEN;
	DMA2CTL = DMADT_0 | DMADSTBYTE | DMASRCBYTE | DMAEN;

	// trigger transfer by first writing manually
	EUSCI_A_SPI_transmitData(FRAM_SPI_PERIPHERAL, dummy_data);
	__bis_SR_register(LPM0_bits | GIE);

	// CS high
	GPIO_setOutputHighOnPin(FRAM_PORT_CS, FRAM_PIN_CS);

	return count;
}

/**
 * Write data to external FRAM.
 * @param address The address of the memory location where the first byte is written to (byte addressed)
 * @param data The local data to write to external memory
 * @param count The number of bytes to write
 * @return The number of bytes written to the external memory
 */
uint16_t EXTFRAM_write(uint32_t address, const void* data, uint16_t count) {
	const uint8_t* data_ptr = (uint8_t*) data;

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

	// 5. transmit data block, using DMA

	// set trigger from SPI
	DMACTL1 = DMA2TSEL__UCA1TXIFG;

	// set source address
	__data16_write_addr((uint16_t) &DMA2SA, (uint32_t) &(data_ptr[1]));
	__data16_write_addr((uint16_t) &DMA2DA,
			EUSCI_A_SPI_getTransmitBufferAddress(FRAM_SPI_PERIPHERAL));

	// set transfer size to image size
	DMA2SZ = count - 1;

	// congifure DMA: single mode, increasing destination address,
	// interrupt clear and enable
	DMA2CTL = DMADT_0 | DMASRCINCR_3 | DMADSTBYTE | DMASRCBYTE | DMAIE | DMAEN;

	// trigger transfer by first writing manually
	EUSCI_A_SPI_transmitData(FRAM_SPI_PERIPHERAL, data_ptr[0]);
	__bis_SR_register(LPM0_bits | GIE);

	// CS high
	GPIO_setOutputHighOnPin(FRAM_PORT_CS, FRAM_PIN_CS);

	return count;
}

/**
 * Erase data block on external FRAM.
 * @param address The address of the memory location where the first byte is erased (byte addressed)
 * @param count The number of bytes to erase
 * @return The number of bytes erased on the external memory
 */
uint16_t EXTFRAM_erase(uint32_t address, const void* data, uint16_t count) {
	const uint8_t zero_data = 0;

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

	// 5. transmit data block, using DMA

	// set trigger from SPI
	DMACTL1 = DMA2TSEL__UCA1TXIFG;

	// set source address
	__data16_write_addr((uint16_t) &DMA2SA, (uint32_t) &zero_data);
	__data16_write_addr((uint16_t) &DMA2DA,	EUSCI_A_SPI_getTransmitBufferAddress(FRAM_SPI_PERIPHERAL));

	// set transfer size to image size
	DMA2SZ = count - 1;

	// congifure DMA: single mode, increasing destination address,
	// interrupt clear and enable
	DMA2CTL = DMADT_0 | DMADSTBYTE | DMASRCBYTE | DMAIE | DMAEN;

	// trigger transfer by first writing manually
	EUSCI_A_SPI_transmitData(FRAM_SPI_PERIPHERAL, zero_data);
	__bis_SR_register(LPM0_bits | GIE);

	// disable DMA transfer
	DMA2CTL &= ~(DMAEN);

	// CS high
	GPIO_setOutputHighOnPin(FRAM_PORT_CS, FRAM_PIN_CS);

	return count;
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
