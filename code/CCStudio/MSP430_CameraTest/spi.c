#include "driverlib.h"

/**
 * Transceive data over the SPI interface.
 * @param base_address Device base address
 * @param data The byte to transmit
 * @return The reveived byte
 */
uint8_t SPI_transceive(uint16_t base_address, uint8_t data) {
	EUSCI_A_SPI_clearInterruptFlag(base_address, EUSCI_A_SPI_RECEIVE_INTERRUPT);
	EUSCI_A_SPI_transmitData(base_address, data);

	// wait until trasmission complete
	while (!EUSCI_A_SPI_getInterruptStatus(base_address,
	EUSCI_A_SPI_RECEIVE_INTERRUPT)) {
		continue;
	}

	data = EUSCI_A_SPI_receiveData(base_address);
	return data;
}
