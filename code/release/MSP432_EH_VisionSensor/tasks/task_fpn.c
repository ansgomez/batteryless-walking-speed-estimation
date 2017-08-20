#include <stdint.h>
#include <driverlib.h>

#include "main.h"
#include "camera.h"

#include "task_fpn.h"

#if CAMERA_MASK_PROCESSING == 0
	#include "camera_fpn.h"
#endif

/**
 * Process raw image in buffer.
 */
void task_fpn(void) {

#if CAMERA_MASK_PROCESSING == 0
	// apply FPN mask inplace
	uint8_t i = 0;
	uint8_t j = 0;
	for ( i = 0; i < CAMERA_IMAGE_SIZE_ROW; i++) {
		for ( j = 0; j < CAMERA_IMAGE_SIZE_COL; j++) {
			local_buffer.image_buffer1[i][j] = camera_fpn[i][j] - local_buffer.image_buffer1[i][j];
			local_buffer.image_buffer2[i][j] = camera_fpn[i][j] - local_buffer.image_buffer2[i][j];
		}
	}
#endif

}
