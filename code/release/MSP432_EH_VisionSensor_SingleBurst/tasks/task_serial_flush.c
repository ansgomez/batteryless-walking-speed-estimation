
#include <stdint.h>
#include <driverlib.h>

#include "sd_diskio.h"

#include "serial.h"
#include "main.h"

#include "task_serial_flush.h"

/**
 * download the datasets from SD card over UART to the PC
 */
void task_serial_flush(void) {

	Serial_init();

	SDcard_initSPI();		// initialize SPI interface
	SDcard_enable();			// power on

	uint32_t image_sector_sd;

	uint8_t temp[ ((sizeof(local_buffer) >> 9)+1) << 9 ];

	uint8_t row = 0;
	uint8_t col = 0;

	uint16_t temp_pointer[ (0x01 << 8) ];

	uint32_t sdcard_pointer_local = 0;

	// Initialize SD card
	if ( disk_initialize(0) != STA_NOINIT ) {

		// Read SD Card pointer from SD Card Sector 0
		if ( disk_read(0, (void *) &temp_pointer, 0, 1 ) == RES_OK ) {
			sdcard_pointer_local = temp_pointer[0];
		}

		// Iterate over all datasets
		while ( sdcard_pointer_local > 0 ) {

			// calculate image start sector on SD card: #images_in_buffer * #sectors_per_image
			image_sector_sd = sdcard_pointer_local * ((sizeof(local_buffer) >> 9)+1);

			// copy dataset from SD Card
			if ( disk_read(0, (void *) &temp, image_sector_sd, ((sizeof(local_buffer) >> 9)+1) ) == RES_OK ) {

				// send datasets over serial

				// images
				for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
					for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
						//local_buffer.image_buffer1[row][col] = temp[col*CAMERA_IMAGE_SIZE_ROW+row];
						//Serial_sendChar((char) local_buffer.image_buffer1[row][col]);
						Serial_sendChar((char) temp[(row*CAMERA_IMAGE_SIZE_COL)+col]);
					}
				}
				for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
					for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
						//local_buffer.image_buffer2[row][col] = temp[(CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL) + (col*CAMERA_IMAGE_SIZE_ROW) + row];
						Serial_sendChar((char) temp[(CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL) + (row*CAMERA_IMAGE_SIZE_COL) + col]);
					}
				}

				// flow field
				for (row = 0; row < NUMBLOCKS_Y; row++) {
					for (col = 0; col < NUMBLOCKS_X; col++) {
						//local_buffer.dx[row][col] = temp[(2*CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL) + (col*NUMBLOCKS_Y) + row];
						Serial_sendChar((char) temp[(2*CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL) + (row*NUMBLOCKS_X) + col]);
					}
				}
				for (row = 0; row < NUMBLOCKS_Y; row++) {
					for (col = 0; col < NUMBLOCKS_X; col++) {
						//local_buffer.dy[row][col] = temp[(2*CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL) + (NUMBLOCKS_Y*NUMBLOCKS_X) + (col*NUMBLOCKS_Y) + row];
						Serial_sendChar((char) temp[(2*CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL) + (NUMBLOCKS_Y*NUMBLOCKS_X) + (row*NUMBLOCKS_X) + col]);
					}
				}

				// velocity estimation
				//local_buffer.vx = temp[(2*CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL) + 2*(NUMBLOCKS_Y*NUMBLOCKS_X)];
				Serial_sendChar((char) temp[(2*CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL) + 2*(NUMBLOCKS_Y*NUMBLOCKS_X)]);
				//local_buffer.vy = temp[(2*CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL) + 2*(NUMBLOCKS_Y*NUMBLOCKS_X) + 1];
				Serial_sendChar((char) temp[(2*CAMERA_IMAGE_SIZE_ROW*CAMERA_IMAGE_SIZE_COL) + 2*(NUMBLOCKS_Y*NUMBLOCKS_X) + 1]);

				sdcard_pointer_local--;
			}
		}
	}

	SDcard_disable();

	// send a dummy stop-byte
	Serial_sendChar((char) 0xFF);

	Serial_disable();
}
