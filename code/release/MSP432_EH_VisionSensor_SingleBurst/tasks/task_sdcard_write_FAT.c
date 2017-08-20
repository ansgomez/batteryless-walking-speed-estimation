#include <stdint.h>
#include <driverlib.h>

#include "serial.h"
#include "main.h"

#include "utils/ff.h"
#include "utils/diskio.h"
#include "sd_diskio.h"

#include "task_sdcard_write_FAT.h"

#ifndef SERIAL_DEBUG
#define SERIAL_DEBUG 0
#endif

/**
 * The camera task. Acquires two images form the camera and buffers it locally.
 */
bool task_sdcard_write_FAT(void){

    UINT bw;       /* Bytes written */
	char filename[17];
	FRESULT iFResult;

#if SERIAL_DEBUG
	Serial_init();
#endif

	SDcard_initSPI();		// initialize SPI interface
	SDcard_enable();			// power on


	// Mount the file system, using logical disk 0.
	iFResult = f_mount(0, &g_sFatFs);
	if (iFResult != FR_OK) {
#if SERIAL_DEBUG
		Serial_sendString("f_mount error\n");
#endif
		SDcard_disable();
		return 0;
	}

	if (f_open(&g_sFileObject, itoa(system_sdcard_pointer, filename, 10), FA_WRITE | FA_CREATE_ALWAYS) == FR_OK) {	/* Create a file */

		f_write(&g_sFileObject, &local_buffer, sizeof(local_buffer), &bw);	/* Write image_buffer1 into the file */

		if (bw != sizeof(local_buffer)) {
#if SERIAL_DEBUG
			Serial_sendString("SDcard local_buffer writing error\n");
#endif
			SDcard_disable();
			return 0;
		}

		f_close(&g_sFileObject);								/* Close the file */
	} else {
#if SERIAL_DEBUG
		Serial_sendString("f_open failed\n");
#endif
		SDcard_disable();
		return 0;
	}

	SDcard_disable();

	// Increase sdcard pointer if everything worked fine
	system_sdcard_pointer++;

	return 1;
}
