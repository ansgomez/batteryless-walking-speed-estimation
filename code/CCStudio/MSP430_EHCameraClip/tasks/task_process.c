#include <stdint.h>
#include <driverlib.h>

#include "camera_fpn.h"
#include "main.h"

#include "task_camera.h"

/**
 * Process raw image in buffer.
 */
void task_process(void) {
	// apply FPN mask inplace
	for (uint8_t i = 0; i < CAMERA_IMAGE_SIZE_ROW; i++) {
		for (uint8_t j = 0; j < CAMERA_IMAGE_SIZE_COL; j++) {
			image_buffer[i][j] = camera_fpn[i][j] - image_buffer[i][j];
		}
	}

	// find minimal brightness value
	uint8_t minimal_value = 255;
	for (uint8_t i = 0; i < CAMERA_IMAGE_SIZE_ROW; i++) {
		for (uint8_t j = 0; j < CAMERA_IMAGE_SIZE_COL; j++) {
			if ( image_buffer[i][j] < minimal_value ) {
				minimal_value = image_buffer[i][j];
			}
		}
	}

	// subtract minimal value from each pixel to reduce dynamic range
	for (uint8_t i = 0; i < CAMERA_IMAGE_SIZE_ROW; i++) {
		for (uint8_t j = 0; j < CAMERA_IMAGE_SIZE_COL; j++) {
			image_buffer[i][j] = image_buffer[i][j] - minimal_value;
		}
	}
}
