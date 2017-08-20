#ifndef SPIFRAM_H_
#define SPIFRAM_H_

#include <stdint.h>

#include "driverlib.h"

uint8_t SPI_transceive(uint32_t, uint8_t);

#endif /* SPIFRAM_H_ */
