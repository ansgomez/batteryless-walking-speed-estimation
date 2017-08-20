#include <stdint.h>
#include <driverlib.h>

#include "serial.h"
#include "main.h"

#include "sd_diskio.h"

#include "task_sdcard_write.h"

#ifndef SERIAL_DEBUG
#define SERIAL_DEBUG 0
#endif

/**
 * The camera task. Acquires two images form the camera and buffers it locally.
 */
bool task_sdcard_write(void){

#if SERIAL_DEBUG
	Serial_init();
#endif

	//SDcard_initSPI();		// initialize SPI interface
	//SDcard_enable();			// power on

	uint32_t image_sector_sd;

	// Initialize SD card
	//if ( disk_initialize(0) != STA_NOINIT ) {

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
			//SDcard_disable();
			return 0;
		}

	// Initialization failed
//	} else {
//
//#if SERIAL_DEBUG
//			Serial_sendString("SD Card Initialization failed\n");
//#endif
//		SDcard_disable();
//		return 0;
//	}

	// Do not power SD Card down until everything is processed!
	//SDcard_waitReady();

	//SDcard_disable();
	return 1;
}
