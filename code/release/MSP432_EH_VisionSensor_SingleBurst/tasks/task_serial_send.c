
#include <stdint.h>
#include <driverlib.h>

#include "serial.h"
#include "main.h"

#include "task_serial_send.h"

/**
 * The camera task. Acquires two images form the camera and buffers it locally.
 */
void task_serial_send(void){

	Serial_init();

	uint32_t row = 0;
	uint32_t col = 0;

	// send images over serial
	for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
		for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
			Serial_sendChar((char) local_buffer.image_buffer1[row][col]);
		}
	}
	for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
		for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
			Serial_sendChar((char) local_buffer.image_buffer2[row][col]);
		}
	}

	// send flow field over serial
	for (row = 0; row < NUMBLOCKS_Y; row++) {
		for (col = 0; col < NUMBLOCKS_X; col++) {
			Serial_sendChar((char) local_buffer.dx[row][col]);
		}
	}
	for (row = 0; row < NUMBLOCKS_Y; row++) {
		for (col = 0; col < NUMBLOCKS_X; col++) {
			Serial_sendChar((char) local_buffer.dy[row][col]);
		}
	}

	// send velocity estimation over serial
	Serial_sendChar((char) local_buffer.vx);
	Serial_sendChar((char) local_buffer.vy);

	// send a dummy stop-byte
	Serial_sendChar((char) 0xFF);

	Serial_disable();
}
