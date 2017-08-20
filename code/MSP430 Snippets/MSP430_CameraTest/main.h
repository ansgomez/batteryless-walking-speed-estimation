#ifndef MAIN_H_
#define MAIN_H_

#include <stdint.h>

#include "camera.h"

extern uint16_t image_buffer[CAMERA_IMAGE_SIZE_ROW][CAMERA_IMAGE_SIZE_COL];

int main(void);

#endif /* MAIN_H_ */
