
#include <stdint.h>
#include <driverlib.h>

#include "serial.h"
#include "main.h"

#include "cypress_fram.h"

#include "utils/ff.h"
#include "utils/diskio.h"
#include "sd_diskio.h"

#include "task_sdcard_flush_FAT.h"

#include "state_retention.h"

#ifndef SERIAL_DEBUG
#define SERIAL_DEBUG 0
#endif

/**
 * The camera task. Acquires two images form the camera and buffers it locally.
 * Returns the number of successfully written images
 */
uint8_t task_sdcard_flush_FAT(void){

    UINT bw;       /* Bytes written */
	char filename[17];
	FRESULT iFResult;

#if SERIAL_DEBUG
	Serial_init();
#endif

	EXTFRAM_powerOn();
	EXTFRAM_init();

	SDcard_initSPI();		// initialize SPI interface
	SDcard_enable();			// power on


	// Mount the file system, using logical disk 0.
	iFResult = f_mount(0, &g_sFatFs);
	if (iFResult != FR_OK) {
#if SERIAL_DEBUG
		Serial_sendString("f_mount error\n");
#endif
		SDcard_disable();
		EXTFRAM_powerOff();
		return 0;
	}

	// start storing the oldest dataset -> fram_read_pointer = (fram_pointer + 1) % FRAM_DATASET_CAPACITY
	uint32_t fram_read_pointer = system_fram_pointer;

	// Iterate over all datasets
	uint8_t i = 0;
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


		// Store Buffer to SD Card
		if (f_open(&g_sFileObject, itoa(system_sdcard_pointer, filename, 10), FA_WRITE | FA_CREATE_ALWAYS) == FR_OK) {	/* Create a file */

			f_write(&g_sFileObject, &local_buffer, sizeof(local_buffer), &bw);	/* Write image_buffer1 into the file */
			if (bw != sizeof(local_buffer)) {
#if SERIAL_DEBUG
				Serial_sendString("SDcard local_buffer writing error\n");
#endif
				SDcard_disable();
				EXTFRAM_powerOff();
				return i;
			}

			f_close(&g_sFileObject);								/* Close the file */

			// Increase sdcard pointer if everything worked fine
			system_sdcard_pointer++;
		} else {
#if SERIAL_DEBUG
			Serial_sendString("f_open failed\n");
#endif
			SDcard_disable();
			EXTFRAM_powerOff();
			return i;
		}
	}

	SDcard_disable();
	EXTFRAM_powerOff();

	return i;
}
