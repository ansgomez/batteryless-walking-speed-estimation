#include <stdint.h>
#include <driverlib.h>

#include "sd_diskio.h"
#include "main.h"

#include "task_sd_write.h"

/**
 * The write SDcard task. Transfers image form local memory to SD card.
 */
void task_sd_write(void) {
	SDcard_initSPI();		// initialize SPI interface
	SDcard_enable();			// power on

	// calculate image start sector: #images_in_buffer * #sectors_per_image
	// use 32 blocks for one image, since this may result in faster write times for some cards
	uint32_t image_sector_sd = sdcard_buffer_size >> 5; // sdcard_buffer_size * (uint32_t) ((image_size >> 9) + 1);

	if ( disk_initialize(0) != STA_NOINIT ) {

		// copy image to external SDcard
		if ( disk_write(0, &image_buffer[0][0], image_sector_sd, ((image_size >> 9) + 1)) == RES_OK ) {
			sdcard_buffer_size++;
		}

	}

	SDcard_disable();
}
