/*
 * state_retention.h
 *
 *  Created on: 06.07.2016
 *      Author: thomas
 */

#ifndef STATE_RETENTION_H_
#define STATE_RETENTION_H_

// FRAM addresses to store the system state
#define SR_FRAM_SYSTEM_TASK_STATE	0
#define SR_FRAM_IMAGE_BUFFER1		SR_FRAM_SYSTEM_TASK_STATE + 6
#define SR_FRAM_IMAGE_BUFFER2		SR_FRAM_IMAGE_BUFFER1 + CAMERA_IMAGE_SIZE_COL*CAMERA_IMAGE_SIZE_ROW
#define SR_FRAM_VELOCITY_VECTOR		SR_FRAM_IMAGE_BUFFER2 + CAMERA_IMAGE_SIZE_COL*CAMERA_IMAGE_SIZE_ROW
#define SR_FRAM_FLOW_FIELD			SR_FRAM_VELOCITY_VECTOR + 2


#define SR_TASK_STATE		0x01
#define SR_IMAGE_BUFFER1		0x02
#define SR_IMAGE_BUFFER2		0x04
#define SR_VELOCITY_VECTOR	0x08
#define SR_FLOW_FIELD		0x08

void load_task_state(void);
void save_task_state(void);
void load_state(void);
void save_state(void);

#endif /* STATE_RETENTION_H_ */
