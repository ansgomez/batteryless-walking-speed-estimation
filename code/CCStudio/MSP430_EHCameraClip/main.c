#include <stdio.h>

#include "driverlib.h"

#include "adc.h"
#include "camera.h"
#include "clock.h"
#include "cypress_fram.h"
#include "sd_diskio.h"
#include "emu.h"
#include "gpio.h"
#include "serial.h"
#include "watchdog.h"
#include "tasks/tasks.h"

#include "main.h"

/// the memory size required for one image
const uint16_t image_size = sizeof(image_buffer[0][0]) * CAMERA_IMAGE_SIZE_ROW
		* CAMERA_IMAGE_SIZE_COL;

/// task voltage requests
const uint8_t system_task_voltage[] = {
		[SYSTEM_TASK_UNDEFINED] = EMU_VOLTAGE_2_0V,
		[SYSTEM_TASK_CAMERA] = EMU_VOLTAGE_3_0V,
		[SYSTEM_TASK_PROCESS] = EMU_VOLTAGE_2_0V,
		[SYSTEM_TASK_FRAM_WRITE] = EMU_VOLTAGE_2_0V,
		[SYSTEM_TASK_SDCARD_FLUSH] = EMU_VOLTAGE_2_7V,
		[SYSTEM_TASK_SDCARD_WRITE] = EMU_VOLTAGE_2_7V,
		[SYSTEM_TASK_DOWNLOAD] = EMU_VOLTAGE_3_0V,
};

/// task burst sizes
const uint8_t system_task_burst_size[] = {
		[SYSTEM_TASK_UNDEFINED] = EMU_BURST4,
		[SYSTEM_TASK_CAMERA] = EMU_BURST1,
		[SYSTEM_TASK_PROCESS] = EMU_BURST3,
		[SYSTEM_TASK_FRAM_WRITE] = EMU_BURST3,
		[SYSTEM_TASK_SDCARD_FLUSH] = EMU_BURST4,
		[SYSTEM_TASK_SDCARD_WRITE] = EMU_BURST2,
		[SYSTEM_TASK_DOWNLOAD] = EMU_BURST1,
};

/// FRAM image ring buffer back pointer
#pragma PERSISTENT( fram_buffer_read_address )
uint32_t fram_buffer_read_address = 0;

/// FRAM image ring buffer front pointer
#pragma PERSISTENT( fram_buffer_write_address )
uint32_t fram_buffer_write_address = 0;

/// local persistent memory for camera image
#pragma PERSISTENT( image_buffer )			// make buffer 3 cols bigger for zerostuffing when writing whole blocks to SD card
uint8_t image_buffer[CAMERA_IMAGE_SIZE_ROW + 3][CAMERA_IMAGE_SIZE_COL] = { 0 };

/// system state variable
#pragma PERSISTENT( system_task_state )
uint8_t system_task_state = SYSTEM_TASK_UNDEFINED;

/// SD card buffer size
#pragma PERSISTENT( sdcard_buffer_size )
uint32_t sdcard_buffer_size = 0;

/**
 * Main program
 * @return Exit code
 */
int main(void) {
	// initialize the watch dog timer
	Watchdog_init();

	uint16_t SystemResetFlags = SYSRSTIV;

	// initialize the system clocks
	Clock_init();

	// setup the GPIO pins
	GPIO_reset();

	// initialize GPIOs
	Camera_initGPIO();
//	EXTFRAM_initGPIO();
	SDcard_initGPIO();
//	Serial_initGPIO();
	EMU_init();
	EMU_configure(EMU_VOLTAGE_2_0V, system_task_burst_size[system_task_state]);

	// set other GPIOs an unlock
	GPIO_init();

	// (setup power management and supervisors)
	// - none -

	// go to low power immediately if not GPIO triggered wakeup from LPMx.5
	if (!(SystemResetFlags & SYSRSTIV_LPM5WU) || (SystemResetFlags & (SYSRSTIV_BOR | SYSRSTIV_RSTNMI))  ||
			system_task_state == SYSTEM_TASK_UNDEFINED) {
		// turn off camera after power up
		Camera_turnPowerOff();

#if SYSTEM_FRAM_SKIP
		system_task_state = SYSTEM_TASK_CAMERA;
#else
		// Is FRAM buffer not full yet?
		// if ( fram_buffer_read_address == fram_buffer_write_address ) { // FRAM buffer empty?
		if ( ((FRAM_SIZE_BYTE + fram_buffer_write_address - fram_buffer_read_address) % FRAM_SIZE_BYTE) < (FRAM_SIZE_BYTE - image_size) ) {
			// set initial task state
			system_task_state = SYSTEM_TASK_CAMERA;
		} else {
			// Flush FRAM buffer to SDcard
			system_task_state = SYSTEM_TASK_SDCARD_FLUSH;
		}
#endif

		// configure burst size (no voltage) for next burst
		EMU_configure(EMU_VOLTAGE_1_9V, system_task_burst_size[system_task_state]);

		enterLPM45();
	}

	// check download mode
	if (GPIO_getInputPinValue(GPIO_PORT_START_BUTTON,
	GPIO_PIN_START_BUTTON) == GPIO_INPUT_PIN_LOW) {
		uint8_t system_task_state_backup = system_task_state;

		GPIO_setOutputHighOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);
		task_download();
		GPIO_setOutputLowOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);

		system_task_state = system_task_state_backup;
		enterLPM45();
	}

	// configure burst size (no voltage) for next burst
	EMU_configure(system_task_voltage[system_task_state],
			system_task_burst_size[system_task_state]);

	// system state machine
	switch (system_task_state) {
	case SYSTEM_TASK_CAMERA:
		//Serial_sendString("SYSTEM_TASK_CAMERA\n");
		//GPIO_setOutputHighOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);

		task_camera();

		// --- join with tasks 2, 3 ---

		//EMU_configure(EMU_VOLTAGE_2_0V,	EMU_BURST2);
		task_process();

		task_sd_write();

#if SYSTEM_FRAM_SKIP
		//system_task_state = SYSTEM_TASK_SDCARD_WRITE;
		system_task_state = SYSTEM_TASK_CAMERA;
#else
		// execute task
		EMU_configure(EMU_VOLTAGE_2_0V,	EMU_BURST2);
		task_fram_write();

		// state update, check if buffer is full
		if ( ((FRAM_SIZE_BYTE + fram_buffer_write_address - fram_buffer_read_address) % FRAM_SIZE_BYTE) < (FRAM_SIZE_BYTE - image_size) ) {
			system_task_state = SYSTEM_TASK_CAMERA;			// FRAM buffer not full yet
		} else {
			system_task_state = SYSTEM_TASK_SDCARD_FLUSH;	// FRAM buffer full -> flush to SDcard
		}
#endif
		// --- end join tasks ----

		//system_task_state = SYSTEM_TASK_PROCESS;

		//GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);
		break;

	case SYSTEM_TASK_PROCESS:
		//Serial_sendString("SYSTEM_TASK_PROCESS\n");
		//GPIO_setOutputHighOnPin(GPIO_PORT_CUSTOM4, GPIO_PIN_CUSTOM4);

		task_process();

#if SYSTEM_FRAM_SKIP
		system_task_state = SYSTEM_TASK_SDCARD_WRITE;
#else
		system_task_state = SYSTEM_TASK_FRAM_WRITE;
#endif

		//GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM4, GPIO_PIN_CUSTOM4);

		break;

	case SYSTEM_TASK_FRAM_WRITE:
		//Serial_sendString("SYSTEM_TASK_FRAM_WRITE\n");
		//GPIO_setOutputHighOnPin(GPIO_PORT_CUSTOM2, GPIO_PIN_CUSTOM2);

		// execute task
		task_fram_write();

		// state update, check if buffer is full
		if ( ((FRAM_SIZE_BYTE + fram_buffer_write_address - fram_buffer_read_address) % FRAM_SIZE_BYTE) < (FRAM_SIZE_BYTE - image_size) ) {
			system_task_state = SYSTEM_TASK_CAMERA;			// FRAM buffer not full yet
		} else {
			system_task_state = SYSTEM_TASK_SDCARD_FLUSH;	// FRAM buffer full -> flush to SDcard
		}

		//GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM2, GPIO_PIN_CUSTOM2);
		break;

	case SYSTEM_TASK_SDCARD_FLUSH:
		//Serial_sendString("SYSTEM_TASK_SDCARD_FLUSH\n");
		//GPIO_setOutputHighOnPin(GPIO_PORT_CUSTOM3, GPIO_PIN_CUSTOM3);

		// execute task
		task_sdcard_flush();

		// state update, check if buffer is still full
		if ( ((FRAM_SIZE_BYTE + fram_buffer_write_address - fram_buffer_read_address) % FRAM_SIZE_BYTE) < (FRAM_SIZE_BYTE - image_size) ) {
			system_task_state = SYSTEM_TASK_CAMERA;			// FRAM buffer not full anymore
		} else {
			system_task_state = SYSTEM_TASK_SDCARD_FLUSH;	// FRAM buffer full -> flush to SDcard
		}

		//GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM3, GPIO_PIN_CUSTOM3);

		break;

#if SYSTEM_FRAM_SKIP
	case SYSTEM_TASK_SDCARD_WRITE:
		//Serial_sendString("SYSTEM_TASK_SDCARD_WRITE\n");
		//GPIO_setOutputHighOnPin(GPIO_PORT_CUSTOM3, GPIO_PIN_CUSTOM3);

		// execute task
		task_sd_write();

		// state update
		system_task_state = SYSTEM_TASK_CAMERA;

		//GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM3, GPIO_PIN_CUSTOM3);

		break;
#endif

	default:
		//Serial_sendString("UNDEFINED STATE\n");

		// undefined state: reset FRAM buffer and start in initial state
		system_task_state = SYSTEM_TASK_CAMERA;

		// reset FRAM buffer
		fram_buffer_read_address = 0;
		fram_buffer_write_address = 0;

		break;
	}

	// configure burst size (no voltage) for next burst
	EMU_configure(EMU_VOLTAGE_2_0V, system_task_burst_size[system_task_state]);

	// finally enter low power to wait for next EMU burst
	enterLPM45();
}

/**
 * Enter the low power mode 4.5 with GPIO wakeup trigger enabled
 */
void enterLPM45(void) {
	// power down external peripherals
	EXTFRAM_powerOff();
	SDcard_disable();

	// enable GPIO interrupt
	GPIO_clearInterruptFlag(GPIO_PORT_LPM_WAKEUP, GPIO_PIN_LPM_WAKEUP);
	GPIO_enableInterrupt(GPIO_PORT_LPM_WAKEUP, GPIO_PIN_LPM_WAKEUP);

	// go to lowest power sleep mode 4.5
	PMMCTL0_H = PMMPW_H;                // Open PMM Registers for write
	PMMCTL0_L &= ~(SVSHE);              // Disable high-side SVS
	PMMCTL0_L |= PMMREGOFF;             // and set PMMREGOFF
	PMMCTL0_H = 0;                      // Lock PMM Registers

	// enter LPM4 with interrupts: restart on GPIO trigger
	__bis_SR_register(LPM4_bits | GIE);
}

// handles system NMI (non-maskable interrupts)
#pragma vector=SYSNMI_VECTOR
__interrupt void SYSNMI_ISR(void)
{
    switch(__even_in_range(SYSSNIV, SYSSNIV_CBDIFG))
    {
    case SYSSNIV_RES02:         // sys low-power reset
        break;
    case SYSSNIV_UBDIFG:        // FRAM Uncorrectable bit Error
        break;
    case SYSSNIV_RES06:         // access time error
        break;
    case SYSSNIV_MPUSEGPIFG:    // enc. IP mem segm. violation
        break;
    case SYSSNIV_MPUSEGIIFG:    // information mem segment violation
        break;
    // MPU interrupt
    case SYSSNIV_MPUSEG1IFG:    // segment 1 mem violation
    case SYSSNIV_MPUSEG2IFG:    // segment 2 mem violation
    case SYSSNIV_MPUSEG3IFG:    // segment 3 mem violation
        break;
    case SYSSNIV_VMAIFG:        // vacant mem access (invalid mem. address)
        break;
    case SYSSNIV_JMBINIFG:      // mailbox input / output (JTAG)
    case SYSSNIV_JMBOUTIFG:
        break;
    case SYSSNIV_CBDIFG:        // Correctable FRAM bit error detection -> maybe make some stats
        break;
    default:
        break;
    }
}


