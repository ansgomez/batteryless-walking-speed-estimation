#include <stdint.h>
#include <driverlib.h>

#include "cypress_fram.h"
#include "main.h"

#include "task_fram_write.h"

/**
 * The write FRAM task. Transfers image form local memory to FRAM.
 */
void task_fram_write(void) {
	EXTFRAM_powerOn();
	EXTFRAM_init();

	// copy image to externam FRAM
	EXTFRAM_write(fram_buffer_write_address, &image_buffer[0][0], image_size);

	// update buffer write pointer
	fram_buffer_write_address = (fram_buffer_write_address + image_size) % FRAM_SIZE_BYTE;

	EXTFRAM_powerOff();
}
