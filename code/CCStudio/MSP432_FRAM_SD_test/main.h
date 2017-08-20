#ifndef MSP432_FRAM_SD_TEST_MAIN_H_
#define MSP432_FRAM_SD_TEST_MAIN_H_

#include <stdint.h>

#include "camera.h"

extern uint16_t image_buffer[CAMERA_IMAGE_SIZE_ROW][CAMERA_IMAGE_SIZE_COL];

int main(void);

#endif /* MSP432_FRAM_SD_TEST_MAIN_H_ */
