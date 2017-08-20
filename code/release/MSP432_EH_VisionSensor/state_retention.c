/*
 * state_retention.c
 *
 *  Created on: 06.07.2016
 *      Author: thomas
 */

#include <stdint.h>
#include <driverlib.h>

#include "cypress_fram.h"
#include "camera.h"
#include "main.h"

#include "state_retention.h"

extern uint8_t system_task_sr_load_config[NUMBER_OF_TASKS];
extern uint8_t system_task_sr_save_config[NUMBER_OF_TASKS];


/**
 * reload only task state from external FRAM (for cold-start)
 */
void load_task_state(void) {
	EXTFRAM_powerOn();
	EXTFRAM_init();

	// copy system_task_state from external FRAM
	EXTFRAM_read(SR_FRAM_SYSTEM_TASK_STATE, &system_task_state, 1);

	// copy system_fram_pointer from external FRAM
	EXTFRAM_read(SR_FRAM_SYSTEM_TASK_STATE+1, &system_fram_pointer, 2);

	// copy system_sdcard_pointer from external FRAM
	EXTFRAM_read(SR_FRAM_SYSTEM_TASK_STATE+3, &system_sdcard_pointer, 2);

	// copy system_fram_buffer_size from external FRAM
	EXTFRAM_read(SR_FRAM_SYSTEM_TASK_STATE+5, &system_fram_buffer_size, 1);

	// check if restored system task state is valid
	if ( system_task_state >= NUMBER_OF_TASKS ) { system_task_state = SYSTEM_TASK_UNDEFINED; }

	EXTFRAM_powerOff();
}

/**
 * save only task state from external FRAM (for cold-start)
 */
void save_task_state(void) {
	EXTFRAM_powerOn();
	EXTFRAM_init();

	// copy system_task_state from external FRAM
	EXTFRAM_write(SR_FRAM_SYSTEM_TASK_STATE, &system_task_state, 1);

	// copy system_fram_pointer from external FRAM
	EXTFRAM_write(SR_FRAM_SYSTEM_TASK_STATE+1, &system_fram_pointer, 2);

	// copy system_sdcard_pointer from external FRAM
	EXTFRAM_write(SR_FRAM_SYSTEM_TASK_STATE+3, &system_sdcard_pointer, 2);

	// copy system_fram_buffer_size from external FRAM
	EXTFRAM_write(SR_FRAM_SYSTEM_TASK_STATE+5, &system_fram_buffer_size, 1);

	EXTFRAM_powerOff();
}

/**
 * reload state from external FRAM
 */
void load_state(void) {
	EXTFRAM_powerOn();
	EXTFRAM_init();

	// copy system_task_state from external FRAM
	EXTFRAM_read(SR_FRAM_SYSTEM_TASK_STATE, &system_task_state, 1);

	// copy system_fram_pointer from external FRAM
	EXTFRAM_read(SR_FRAM_SYSTEM_TASK_STATE+1, &system_fram_pointer, 2);

	// copy system_sdcard_pointer from external FRAM
	EXTFRAM_read(SR_FRAM_SYSTEM_TASK_STATE+3, &system_sdcard_pointer, 2);

	// copy system_fram_buffer_size from external FRAM
	EXTFRAM_read(SR_FRAM_SYSTEM_TASK_STATE+5, &system_fram_buffer_size, 1);

	// check if restored system task state is valid
	if ( system_task_state >= NUMBER_OF_TASKS ) { system_task_state = SYSTEM_TASK_UNDEFINED; }
	uint8_t config = system_task_sr_load_config[system_task_state];

	// valid FRAM pointer?
	if ( system_fram_pointer >= 0 && system_fram_pointer < FRAM_DATASET_CAPACITY ) {

		// copy image_buffer1 from external FRAM
		if ( config & SR_IMAGE_BUFFER1 ) {
			EXTFRAM_read( (system_fram_pointer * sizeof(DATASET)) + SR_FRAM_IMAGE_BUFFER1,
					&(local_buffer.image_buffer1[0][0]), CAMERA_IMAGE_SIZE_COL*CAMERA_IMAGE_SIZE_ROW);
		}

		// copy image_buffer2 from external FRAM
		if ( config & SR_IMAGE_BUFFER1 ) {
			EXTFRAM_read( (system_fram_pointer * sizeof(DATASET)) + SR_FRAM_IMAGE_BUFFER2,
					&(local_buffer.image_buffer2[0][0]), CAMERA_IMAGE_SIZE_COL*CAMERA_IMAGE_SIZE_ROW);
		}

		// copy velocity vector to external FRAM
		if ( config & SR_VELOCITY_VECTOR ) {
			EXTFRAM_read((system_fram_pointer * sizeof(DATASET)) + SR_FRAM_VELOCITY_VECTOR,
					&(local_buffer.vx), 1);
			EXTFRAM_read((system_fram_pointer * sizeof(DATASET)) + SR_FRAM_VELOCITY_VECTOR+1,
					&(local_buffer.vy), 1);
		}

		// copy velocity vector to external FRAM
		if ( config & SR_FLOW_FIELD ) {
			EXTFRAM_read((system_fram_pointer * sizeof(DATASET)) + SR_FRAM_FLOW_FIELD,
					&(local_buffer.dx[0][0]), NUMBLOCKS_X*NUMBLOCKS_Y);
			EXTFRAM_read((system_fram_pointer * sizeof(DATASET)) + SR_FRAM_FLOW_FIELD+(NUMBLOCKS_X*NUMBLOCKS_Y),
					&(local_buffer.dy[0][0]), NUMBLOCKS_X*NUMBLOCKS_Y);
		}
	}

	EXTFRAM_powerOff();
}


/**
 * save state to external FRAM
 */
void save_state(void) {
	EXTFRAM_powerOn();
	EXTFRAM_init();

	// copy system_task_next_state to external FRAM
	EXTFRAM_write(SR_FRAM_SYSTEM_TASK_STATE, &system_task_next_state, 1);

	// copy system_fram_pointer to external FRAM
	EXTFRAM_write(SR_FRAM_SYSTEM_TASK_STATE+1, &system_fram_pointer, 2);

	// copy system_sdcard_pointer to external FRAM
	EXTFRAM_write(SR_FRAM_SYSTEM_TASK_STATE+3, &system_sdcard_pointer, 2);

	// copy system_fram_buffer_size from external FRAM
	EXTFRAM_write(SR_FRAM_SYSTEM_TASK_STATE+5, &system_fram_buffer_size, 1);

	// what needs to be saved?
	uint8_t config = system_task_sr_save_config[system_task_state];

	// valid FRAM pointer?
	if ( system_fram_pointer >= 0 && system_fram_pointer < FRAM_DATASET_CAPACITY ) {

		// copy image_buffer1 to external FRAM
		if ( config & SR_IMAGE_BUFFER1 ) {
			EXTFRAM_write((system_fram_pointer * sizeof(DATASET)) + SR_FRAM_IMAGE_BUFFER1,
					&(local_buffer.image_buffer1[0][0]), CAMERA_IMAGE_SIZE_COL*CAMERA_IMAGE_SIZE_ROW);
		}

		// copy image_buffer2 to external FRAM
		if ( config & SR_IMAGE_BUFFER1 ) {
			EXTFRAM_write((system_fram_pointer * sizeof(DATASET)) + SR_FRAM_IMAGE_BUFFER2,
					&(local_buffer.image_buffer2[0][0]), CAMERA_IMAGE_SIZE_COL*CAMERA_IMAGE_SIZE_ROW);
		}

		// copy velocity vector to external FRAM
		if ( config & SR_VELOCITY_VECTOR ) {
			EXTFRAM_write((system_fram_pointer * sizeof(DATASET)) + SR_FRAM_VELOCITY_VECTOR,
					&(local_buffer.vx), 1);
			EXTFRAM_write((system_fram_pointer * sizeof(DATASET)) + SR_FRAM_VELOCITY_VECTOR+1,
					&(local_buffer.vy), 1);
		}

		// copy velocity vector to external FRAM
		if ( config & SR_FLOW_FIELD ) {
			EXTFRAM_write((system_fram_pointer * sizeof(DATASET)) + SR_FRAM_FLOW_FIELD,
					&(local_buffer.dx[0][0]), NUMBLOCKS_X*NUMBLOCKS_Y);
			EXTFRAM_write((system_fram_pointer * sizeof(DATASET)) + SR_FRAM_FLOW_FIELD+(NUMBLOCKS_X*NUMBLOCKS_Y),
					&(local_buffer.dy[0][0]), NUMBLOCKS_X*NUMBLOCKS_Y);
		}
	}

	EXTFRAM_powerOff();
}
