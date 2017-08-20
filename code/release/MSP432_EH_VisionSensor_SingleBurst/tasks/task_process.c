#include <stdint.h>
#include <driverlib.h>

#include "main.h"

#include "task_camera.h"

/**
 * Process raw image in buffer.
 */
void task_process(void) {

	block_matching(*local_buffer.image_buffer1, *local_buffer.image_buffer2, *local_buffer.dx, *local_buffer.dy);
	velocity_estimation_AVG(*local_buffer.dx, *local_buffer.dy, &local_buffer.vx, &local_buffer.vy);

}
