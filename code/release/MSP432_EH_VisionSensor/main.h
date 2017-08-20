#ifndef MAIN_H_
#define MAIN_H_

#include <stdint.h>

#include "camera.h"
#include "image_processing.h"
#include "tasks/tasks.h"
#include "emu.h"

#define FRAM_DATASET_CAPACITY	5	// for 1Mbit FRAM	// floor(FRAM_SIZE_BYTE/sizeof(DATASET) - 5)

#define USE_NVMH 	2
#define USE_FAT		0

#define DEFAULT_VOLTAGE 	EMU_VOLTAGE_2_0V

int main(void);
void enterLPM45(void);
char * itoa(int, char *, int);

typedef struct {
	uint8_t 	image_buffer1[CAMERA_IMAGE_SIZE_ROW][CAMERA_IMAGE_SIZE_COL];			/* Image Buffer 1 */
	uint8_t 	image_buffer2[CAMERA_IMAGE_SIZE_ROW][CAMERA_IMAGE_SIZE_COL];			/* Image Buffer 2 */
	int8_t 	dx[NUMBLOCKS_Y][NUMBLOCKS_X];										/* Displacement Flow Field X values */
	int8_t	dy[NUMBLOCKS_Y][NUMBLOCKS_X];										/* Displacement Flow Field Y values */
	int8_t	vx;																	/* Velocity Estimation X value */
	int8_t	vy;																	/* Velocity Estimation Y value */
} DATASET;

extern DATASET local_buffer;

extern uint8_t system_task_state;
extern uint8_t system_task_next_state;

extern int16_t system_fram_pointer;
extern uint8_t system_fram_buffer_size;
extern uint16_t system_sdcard_pointer;

#endif /* MAIN_H_ */
