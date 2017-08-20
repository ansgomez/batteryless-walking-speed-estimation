#ifndef MAIN_H_
#define MAIN_H_

#include <stdint.h>

#include "camera.h"
#include "emu.h"

#define SYSTEM_TASK_UNDEFINED		0x00
#define SYSTEM_TASK_CAMERA			0x01
#define SYSTEM_TASK_PROCESS			0x02
#define SYSTEM_TASK_FRAM_WRITE		0x03
#define SYSTEM_TASK_SDCARD_FLUSH	0x04
#define SYSTEM_TASK_SDCARD_WRITE	0x05
#define SYSTEM_TASK_DOWNLOAD 		0x06

#define SYSTEM_FRAM_SKIP 1

extern const uint8_t fram_buffer_limit;

extern const uint16_t image_size;

extern const uint8_t system_task_voltage[];
extern const uint8_t system_task_burst_size[];

extern uint32_t fram_buffer_read_address;
extern uint32_t fram_buffer_write_address;

extern uint8_t image_buffer[CAMERA_IMAGE_SIZE_ROW + 3][CAMERA_IMAGE_SIZE_COL];

extern uint32_t sdcard_buffer_size;

int main(void);
void enterLPM45(void);

#endif /* MAIN_H_ */
