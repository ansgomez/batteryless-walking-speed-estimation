#include "driverlib.h"

/**
 * Transceive data over the SPI interface.
 * @param base_address Device base address
 * @param data The byte to transmit
 * @return The reveived byte
 */


uint8_t SPI_transceive(uint32_t base_address, uint8_t data) {
	SPI_clearInterruptFlag(base_address, EUSCI_A_SPI_RECEIVE_INTERRUPT);
	SPI_transmitData(base_address, data);

	// wait until trasmission complete
	while (!SPI_getInterruptStatus(base_address, EUSCI_A_SPI_RECEIVE_INTERRUPT)) {
		continue;
	}

	data = SPI_receiveData(base_address);
	return data;
}

