#ifndef TASKS_TASKS_H_
#define TASKS_TASKS_H_

#include "task_camera.h"
#include "task_process.h"
#include "task_serial_send.h"
#include "task_fpn.h"
#include "task_sdcard_flush_FAT.h"
#include "task_sdcard_write_FAT.h"
#include "task_sdcard_flush.h"
#include "task_sdcard_write.h"

#include "task_serial_flush.h"
#include "task_serial_send.h"

#define SYSTEM_TASK_UNDEFINED		0x00
#define SYSTEM_TASK_CAMERA			0x01
#define SYSTEM_TASK_PROCESS			0x02
#define SYSTEM_TASK_SDCARD_FLUSH		0x03
#define SYSTEM_TASK_SDCARD_WRITE		0x04

#define NUMBER_OF_TASKS				5

#endif /* TASKS_TASKS_H_ */
