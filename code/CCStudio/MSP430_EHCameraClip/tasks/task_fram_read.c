#include <stdint.h>
#include <driverlib.h>

#include "cypress_fram.h"
#include "main.h"

#include "task_fram_read.h"

/**
 * The read FRAM task. Transfers a stored image form FRAM to local memory.
 */
void task_fram_read(void) {
	EXTFRAM_powerOn();
	EXTFRAM_init();

	// copy image from external FRAM
	EXTFRAM_read(fram_buffer_read_address, &image_buffer[0][0], image_size);

	// adjust FRAM buffer read pointer
	fram_buffer_read_address = (fram_buffer_read_address + (uint32_t) image_size) % FRAM_SIZE_BYTE;

	EXTFRAM_powerOff();
}
