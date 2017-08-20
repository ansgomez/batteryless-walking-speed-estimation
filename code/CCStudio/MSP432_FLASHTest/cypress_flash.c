#include <cypress_flash.h>
#include <spiFRAM.h>
#include <stdint.h>

#include "driverlib.h"

/**
 * Initialize the external FLASH interface.
 */
void EXTFLASH_init(void) {
	// configure SPI as master
	eUSCI_SPI_MasterConfig spi_init_struct = {
		.selectClockSource = EUSCI_A_SPI_CLOCKSOURCE_SMCLK,
		.clockSourceFrequency = CS_getSMCLK(),						// SMCLK 3Mhz
		.desiredSpiClock = FLASH_SPI_FREQUENCY,
//		.desiredSpiClock = CS_getSMCLK(),
		.msbFirst = EUSCI_A_SPI_MSB_FIRST,
//		.clockPhase = EUSCI_A_SPI_PHASE_DATA_CAPTURED_ONFIRST_CHANGED_ON_NEXT,
//		.clockPolarity = EUSCI_A_SPI_CLOCKPOLARITY_INACTIVITY_HIGH,
		.clockPhase = EUSCI_A_SPI_PHASE_DATA_CAPTURED_ONFIRST_CHANGED_ON_NEXT,
		.clockPolarity = EUSCI_A_SPI_CLOCKPOLARITY_INACTIVITY_LOW,
		.spiMode = EUSCI_A_SPI_3PIN,
//		.spiMode = EUSCI_A_SPI_4PIN_UCxSTE_ACTIVE_LOW,
	};

	SPI_initMaster(FLASH_SPI_PERIPHERAL, &spi_init_struct);
	SPI_selectFourPinFunctionality(FLASH_SPI_PERIPHERAL, EUSCI_B_SPI_ENABLE_SIGNAL_FOR_4WIRE_SLAVE);

	// enable SPI
	SPI_enableModule(FLASH_SPI_PERIPHERAL);
}

/**
 * Initialize GPIOs used for FLASH interface.
 */
void EXTFLASH_initGPIO(void) {
	// configure SPI pins
	GPIO_setAsPeripheralModuleFunctionOutputPin(FLASH_PORT_CLK, FLASH_PIN_CLK,
			GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionOutputPin(FLASH_PORT_MOSI, FLASH_PIN_MOSI,
			GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionInputPin(FLASH_PORT_MISO, FLASH_PIN_MISO,
			GPIO_PRIMARY_MODULE_FUNCTION);
//	GPIO_setAsPeripheralModuleFunctionInputPin(FLASH_PORT_CS, FLASH_PIN_CS,
//			GPIO_PRIMARY_MODULE_FUNCTION);

	GPIO_setAsOutputPin(FLASH_PORT_CS, FLASH_PIN_CS);
	GPIO_setOutputHighOnPin(FLASH_PORT_CS, FLASH_PIN_CS);

	GPIO_setAsOutputPin(FLASH_PORT_POWER, FLASH_PIN_POWER);
	GPIO_setOutputHighOnPin(FLASH_PORT_POWER, FLASH_PIN_POWER);
}

/**
 * Enable power supply of external FLASH chip.
 */
void EXTFLASH_powerOn(void) {
	// power on
	GPIO_setOutputHighOnPin(FLASH_PORT_POWER, FLASH_PIN_POWER);

	// configure GPIO to default
	EXTFLASH_initGPIO();
}

/**
 * Disable power supply of external FLASH chip.
 */
void EXTFLASH_powerOff(void) {
	// configure output
	GPIO_setAsOutputPin(FLASH_PORT_CLK, FLASH_PIN_CLK);
	GPIO_setAsOutputPin(FLASH_PORT_MOSI, FLASH_PIN_MOSI);
	GPIO_setAsOutputPin(FLASH_PORT_MISO, FLASH_PIN_MISO);

	// set outputs low
	GPIO_setOutputLowOnPin(FLASH_PORT_POWER, FLASH_PIN_POWER);
	GPIO_setOutputLowOnPin(FLASH_PORT_CLK, FLASH_PIN_CLK);
	GPIO_setOutputLowOnPin(FLASH_PORT_MOSI, FLASH_PIN_MOSI);
	GPIO_setOutputLowOnPin(FLASH_PORT_MISO, FLASH_PIN_MISO);
	GPIO_setOutputLowOnPin(FLASH_PORT_CS, FLASH_PIN_CS);
}

/**
 * Read data form external FLASH.
 * @param address The address of the memory location where the first byte to
 * read is stored (byte addressed)
 * @param data The local data buffer where the read data is written to
 * @param count The number of bytes to read
 * @return The number of bytes read from external memory
 */
uint16_t EXTFLASH_read(uint32_t address, void* data, uint16_t count) {
	uint8_t* data_ptr = (uint8_t*)data;

	// CS low
	GPIO_setOutputLowOnPin(FLASH_PORT_CS, FLASH_PIN_CS);

	// 1. transmit read command
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_CMD_READ);

	// 2. transmit 3 byte read address, MSB first
	SPI_transceive(FLASH_SPI_PERIPHERAL, (address >> 16) & 0xff);
	SPI_transceive(FLASH_SPI_PERIPHERAL, (address >> 8) & 0xff);
	SPI_transceive(FLASH_SPI_PERIPHERAL, address & 0xff);

	// 3. receive data
	uint16_t i = 0;
	while(i < count) {
		data_ptr[i++] = SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_SPI_DUMMY_MESSAGE);
	}

	// CS high
	GPIO_setOutputHighOnPin(FLASH_PORT_CS, FLASH_PIN_CS);

	return i;
}

/**
 * Write data to external FLASH.
 * @param address The address of the memory location where the first byte is written to (byte addressed)
 * @param data The local data to write to external memory
 * @param count The number of bytes to write
 * @return The number of bytes written to the external memory
 */
uint16_t EXTFLASH_write(uint32_t address, const void* data, uint16_t count) {
	const uint8_t* data_ptr = (uint8_t*)data;

	// CS low
	GPIO_setOutputLowOnPin(FLASH_PORT_CS, FLASH_PIN_CS);

	// 1. transmit write enable command
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_CMD_WREN);

	// 2. confirm write enable by pulling CS high for a short period
	GPIO_setOutputHighOnPin(FLASH_PORT_CS, FLASH_PIN_CS);
	GPIO_setOutputLowOnPin(FLASH_PORT_CS, FLASH_PIN_CS);

	// 3. transmit write command
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_CMD_PP);

	// 4. transmit 3 byte write address, MSB first
	SPI_transceive(FLASH_SPI_PERIPHERAL, (address >> 16) & 0xff);
	SPI_transceive(FLASH_SPI_PERIPHERAL, (address >> 8) & 0xff);
	SPI_transceive(FLASH_SPI_PERIPHERAL, address & 0xff);

	// 5. transmit the register values to set
	uint16_t i = 0;
	while(i < count) {
		SPI_transceive(FLASH_SPI_PERIPHERAL, data_ptr[i++]);
	}

	// CS high
	GPIO_setOutputHighOnPin(FLASH_PORT_CS, FLASH_PIN_CS);

	return i;
}

/**
 * Set the external FLASH to sleep mode.
 * @note This will introduce a delay on the next commmand that needs to be
 * handeled manually.
 */
void EXTFLASH_sleep(void) {
	// CS low
	GPIO_setOutputLowOnPin(FLASH_PORT_CS, FLASH_PIN_CS);

	// 1. transmit write enable command
	SPI_transceive(FLASH_SPI_PERIPHERAL, FLASH_CMD_SLEEP);

	// CS high
	GPIO_setOutputHighOnPin(FLASH_PORT_CS, FLASH_PIN_CS);
}

/**
 * Trigger a wakeup of the external FLASH when in sleep mode.
 * @note Delay needs to be added manually after wakeup trigger to guarantee
 * reliable operation.
 */
void EXTFLASH_wakeup(void) {
	// toggle CS
	GPIO_setOutputLowOnPin(FLASH_PORT_CS, FLASH_PIN_CS);
	GPIO_setOutputHighOnPin(FLASH_PORT_CS, FLASH_PIN_CS);
}
