#include <stdint.h>
#include <driverlib.h>

#include "cypress_fram.h"
#include "main.h"
#include "serial.h"

#include "task_download.h"

#include "sd_diskio.h"

/**
 * The image download task. Downloads images stored on the SD card.
 */
void task_download(void) {
	Serial_init();

	// send image over serial
//	Serial_sendData(&image_buffer[0][0], image_size);

//	EXTFRAM_powerOn();
//	EXTFRAM_init();
//
//	uint32_t image_address = 0;
//	// download image by image and write to UART
//	while (image_address <= FRAM_SIZE_BYTE - image_size) {
//
//		// read image
//		EXTFRAM_read(image_address, &image_buffer[0][0], image_size);
//
//		// send image over serial
//		Serial_sendData(&image_buffer[0][0], image_size);
//
//		// calculate address of next image
//		image_address = image_address + image_size;
//	}
//
//
//	// reset image address to begin of memory
//	image_address = 0;
//
//	EXTFRAM_powerOff();


	// Download Images from SDcard

	// initialize SD card
	SDcard_initSPI();		// initialize SPI interface
	SDcard_enable();			// power on

	disk_initialize(0);

	uint32_t image_sector_sd = 0;

	// go through all images in SDcard
	for (uint32_t i = sdcard_buffer_size; i > 0; i--) {
		// read image from SDcard

		// calculate image start sector: #images_in_buffer * #sectors_per_image
		image_sector_sd = (i-1) * (uint32_t) ((image_size >> 9) + 1);

		// read image from external SDcard
		disk_read(0, &image_buffer[0][0], image_sector_sd, ((image_size >> 9) + 1));

		Serial_sendData(&image_buffer[0][0], image_size);
	}

	SDcard_disable();
}
