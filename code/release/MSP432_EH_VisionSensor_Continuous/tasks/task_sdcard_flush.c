
#include <stdint.h>
#include <driverlib.h>

#include "serial.h"
#include "main.h"

#include "cypress_fram.h"

#include "sd_diskio.h"

#include "task_sdcard_flush.h"

#include "state_retention.h"

#ifndef SERIAL_DEBUG
#define SERIAL_DEBUG 0
#endif

/**
 * The camera task. Acquires two images form the camera and buffers it locally.
 * Returns the number of successfully written images
 */
uint8_t task_sdcard_flush(void){

#if SERIAL_DEBUG
	Serial_init();
#endif

	EXTFRAM_powerOn();
	EXTFRAM_init();

	SDcard_initSPI();		// initialize SPI interface
	SDcard_enable();			// power on


	uint32_t image_sector_sd;
	uint8_t i = 0;

	// start storing the oldest dataset -> fram_read_pointer = (fram_pointer + 1) % FRAM_DATASET_CAPACITY
	uint32_t fram_read_pointer = system_fram_pointer;

	// Initialize SD card
	if ( disk_initialize(0) != STA_NOINIT ) {

		// Iterate over all datasets
		for ( i = 0; i < FRAM_DATASET_CAPACITY; i++ ) {

			// fetch oldest dataset from FRAM
			fram_read_pointer++;
			if ( fram_read_pointer == FRAM_DATASET_CAPACITY ) {
				fram_read_pointer = 0;		// wrap ring buffer around
			}

			// copy image_buffer1 from external FRAM
			EXTFRAM_read( (fram_read_pointer * sizeof(DATASET)) + SR_FRAM_IMAGE_BUFFER1,
					&(local_buffer.image_buffer1[0][0]), CAMERA_IMAGE_SIZE_COL*CAMERA_IMAGE_SIZE_ROW);

			// copy image_buffer2 from external FRAM
			EXTFRAM_read( (fram_read_pointer * sizeof(DATASET)) + SR_FRAM_IMAGE_BUFFER2,
					&(local_buffer.image_buffer2[0][0]), CAMERA_IMAGE_SIZE_COL*CAMERA_IMAGE_SIZE_ROW);

			// copy velocity vector from external FRAM
			EXTFRAM_read((fram_read_pointer * sizeof(DATASET)) + SR_FRAM_VELOCITY_VECTOR,
					&(local_buffer.vx), 1);
			EXTFRAM_read((fram_read_pointer * sizeof(DATASET)) + SR_FRAM_VELOCITY_VECTOR+1,
					&(local_buffer.vy), 1);

			// copy velocity vector from external FRAM
			EXTFRAM_read((fram_read_pointer * sizeof(DATASET)) + SR_FRAM_FLOW_FIELD,
					&(local_buffer.dx[0][0]), NUMBLOCKS_X*NUMBLOCKS_Y);
			EXTFRAM_read((fram_read_pointer * sizeof(DATASET)) + SR_FRAM_FLOW_FIELD+(NUMBLOCKS_X*NUMBLOCKS_Y),
					&(local_buffer.dy[0][0]), NUMBLOCKS_X*NUMBLOCKS_Y);


			// Store Buffer to SD Card without FAT file system

			// calculate image start sector: #images_in_buffer * #sectors_per_image
			image_sector_sd = system_sdcard_pointer * ((sizeof(local_buffer) >> 9)+1);

			// copy dataset to SD Card
			if ( disk_write(0, (void *) &local_buffer, image_sector_sd, ((sizeof(local_buffer) >> 9)+1) ) == RES_OK ) {

				// Increase sdcard pointer if everything worked fine
				system_sdcard_pointer++;
			} else {
#if SERIAL_DEBUG
			Serial_sendString("SD Card Write failed\n");
#endif
				SDcard_disable();
				EXTFRAM_powerOff();
				return i;
			}

		}

	// Initialization failed
	} else {

#if SERIAL_DEBUG
			Serial_sendString("SD Card Initialization failed\n");
#endif
		SDcard_disable();
		EXTFRAM_powerOff();
		return 0;
	}

	// Do not power SD Card down until everything is processed!
	SDcard_waitReady();

	SDcard_disable();
	EXTFRAM_powerOff();

	return i;
}
