#include <stdint.h>
#include <driverlib.h>

#include "cypress_fram.h"
#include "main.h"
#include "sd_diskio.h"
#include "timer.h"

#include "task_sdcard_flush.h"

/**
 * Flush FRAM content to SD card task.
 */
void task_sdcard_flush(void) {

	// Start Timer
	TimerA3_init(10000);

	// initialize FRAM
	EXTFRAM_powerOn();
	EXTFRAM_init();

	// initialize SD card
	SDcard_initSPI();		// initialize SPI interface
	SDcard_enable();			// power on

	if ( disk_initialize(0) != STA_NOINIT ) {

		// go through all images in FRAM
		while ( fram_buffer_read_address != fram_buffer_write_address ) {

			if ( Timer_A_getCounterValue(TIMER_A3_BASE) > 590 ) {		// Transcend: 560
				break;
			}

			// calculate image address
			// uint32_t fram_read_address = fram_buffer_read * (uint32_t)image_size;

			// copy image from external FRAM
			EXTFRAM_read(fram_buffer_read_address, &image_buffer[0][0], image_size);

			// calculate image start sector on SDcard: #images_in_buffer * #sectors_per_image
			// use 32 blocks for one image, since this may result in faster write times for some cards
			uint32_t image_sector_sd = sdcard_buffer_size >> 5; // sdcard_buffer_size * (uint32_t) ((image_size >> 9) + 1);

			// copy image to external SDcard
			if ( disk_write(0, &image_buffer[0][0], image_sector_sd, ((image_size >> 9) + 1)) == RES_ERROR ) {
				break;
			}

			// increase SD card buffer size
			sdcard_buffer_size++;

			// adjust FRAM buffer read pointer (after SD write to clear only when transfer successful)
			fram_buffer_read_address = (fram_buffer_read_address + image_size) % FRAM_SIZE_BYTE;
		}
	}

	SDcard_disable();
	EXTFRAM_powerOff();

	TimerA3_stop();
}
