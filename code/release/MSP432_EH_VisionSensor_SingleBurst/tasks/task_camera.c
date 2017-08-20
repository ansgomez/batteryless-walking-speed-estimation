
#include <stdint.h>
#include <driverlib.h>

#include "camera.h"
#include "gpio.h"
#include "main.h"

#include "task_camera.h"

#if CAMERA_MASK_PROCESSING == 1
	#include "camera_fpn.h"
#endif

/**
 * The camera task. Acquires two images form the camera and buffers it locally.
 */
void task_camera(void){
	// initialize and configure camera

	//Camera_enable();
	Camera_init();
	Camera_configure(CAMERA_NBIAS, CAMERA_AOBIAS, CAMERA_GAIN, CAMERA_VREF);

#if CAMERA_MASK_PROCESSING == 1
	Camera_defineMask(*camera_fpn);
#endif

	// start low power image aquisition and enter low power mode
	Camera_startAquire(*local_buffer.image_buffer1);

	// start low power image aquisition and enter low power mode
	Camera_startAquire(*local_buffer.image_buffer2);

	Camera_turnPowerOff();

	Camera_disable();


// For Debugging: Fill image data with some gradients...
//	uint8_t row_n;
//	uint8_t col_n;
//	for (row_n = 0; row_n < CAMERA_IMAGE_SIZE_ROW; row_n++) {
//		for (col_n = 0; col_n < CAMERA_IMAGE_SIZE_COL; col_n++) {
//			image_buffer1[row_n][col_n] = row_n*CAMERA_IMAGE_SIZE_COL + col_n;
//		}
//	}

}
