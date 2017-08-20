
#include <stdint.h>
#include <driverlib.h>

#include "adc.h"
#include "camera.h"
#include "gpio.h"
#include "main.h"

#include "task_camera.h"

/**
 * The camera task. Acquires one image form the camera and buffers it locally.
 */
void task_camera(void){
	// initialize and configure camera
	Camera_init();
	Camera_configure(CAMERA_NBIAS, CAMERA_AOBIAS, CAMERA_GAIN, CAMERA_VREF);
	Camera_setupADC();

	// start low power image aquisition and enter low power mode
	Camera_startAquire(*image_buffer);

	__bis_SR_register(LPM0_bits | GIE);

	// disable DMA transfer
	DMA1CTL &= ~(DMAEN);

	Camera_turnPowerOff();
	ADC_turnReferenceOff();
	ADC12CTL0 = 0;

// For Debugging: Fill image data with some gradients...
//	for (uint8_t row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {
//		for (uint8_t col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
//			image_buffer[row][col] = row*CAMERA_IMAGE_SIZE_COL + col;
//		}
//	}

}
