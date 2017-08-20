/******************************************************************************
 * MSP432 Ceneye Camera
 *
 * Author: Thomas Schalch, ETHZ, 2016
 *******************************************************************************/

/* DriverLib Includes */
#include "driverlib.h"

/* Standard Includes */
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include <serial.h>

#include "main.h"
#include "emu.h"
#include "gpio.h"
#include "state_retention.h"

#include "clock.h"

#include "utils/ff.h"
#include "utils/diskio.h"
#include "sd_diskio.h"

#include "cypress_fram.h"
#include "camera.h"
#include "image_processing.h"

#include "tasks/tasks.h"

/// memory for local images/vector buffers
DATASET local_buffer;

/// task voltage requests
const uint8_t system_task_voltage[] = {
		[SYSTEM_TASK_UNDEFINED] = EMU_VOLTAGE_2_0V,
		[SYSTEM_TASK_CAMERA] = EMU_VOLTAGE_3_3V,
		[SYSTEM_TASK_PROCESS] = EMU_VOLTAGE_2_2V,
		[SYSTEM_TASK_SDCARD_FLUSH] = EMU_VOLTAGE_2_8V,
		[SYSTEM_TASK_SDCARD_WRITE] = EMU_VOLTAGE_2_8V,
};

/// task burst sizes
const uint8_t system_task_burst_size[] = {
		[SYSTEM_TASK_UNDEFINED] = EMU_BURST1,
		[SYSTEM_TASK_CAMERA] = EMU_BURST3,
		[SYSTEM_TASK_PROCESS] = EMU_BURST3,
		[SYSTEM_TASK_SDCARD_FLUSH] = EMU_BURST4,
		[SYSTEM_TASK_SDCARD_WRITE] = EMU_BURST4,
};

/// task state load configuration: which items need to be loaded from FRAM into internal SRAM before task execution?
const uint8_t system_task_sr_load_config[] = {
		[SYSTEM_TASK_UNDEFINED] = 0,
		[SYSTEM_TASK_CAMERA] = 0,
		[SYSTEM_TASK_PROCESS] = 0,
		[SYSTEM_TASK_SDCARD_FLUSH] = 0,
		[SYSTEM_TASK_SDCARD_WRITE] = SR_IMAGE_BUFFER1 | SR_IMAGE_BUFFER2 | SR_FLOW_FIELD | SR_VELOCITY_VECTOR,
};

/// task state save configuration: which items need to be saved into FRAM after task execution?
const uint8_t system_task_sr_save_config[] = {
		[SYSTEM_TASK_UNDEFINED] = 0,
		[SYSTEM_TASK_CAMERA] = SR_IMAGE_BUFFER1 | SR_IMAGE_BUFFER2 | SR_FLOW_FIELD | SR_VELOCITY_VECTOR,
		[SYSTEM_TASK_PROCESS] = 0,
		[SYSTEM_TASK_SDCARD_FLUSH] = 0,
		[SYSTEM_TASK_SDCARD_WRITE] = 0,
};

static volatile bool GPIOwakeup;

/// system current state variable
uint8_t system_task_state = SYSTEM_TASK_UNDEFINED;
/// system next state variable
uint8_t system_task_next_state = SYSTEM_TASK_UNDEFINED;


/// system FRAM memory pointer
int16_t system_fram_pointer = -1;
/// system FRAM memory buffer size
uint8_t system_fram_buffer_size = 0;
/// system SDcard memory pointer
uint16_t system_sdcard_pointer = 0;

/// Current Clock Frequency
uint32_t clock_frequency = 12000000;

// DMA Control Table
#ifdef ewarm
#pragma data_alignment=256
#else
#pragma DATA_ALIGN(controlTable, 256)
#endif
uint8_t controlTable[256];

int main(void) {

	/* Halting WDT and disabling master interrupts */
    WDT_A->CTL = WDT_A_CTL_PW | WDT_A_CTL_HOLD;         // Halt the WDT

	GPIOwakeup = false;

	// Set Clock Frequency to 12 MHz
    SystemInit();
    SystemCoreClockUpdate();
    clock_frequency = 12000000;

    // reset GPIO pins (set all to low)
	GPIO_reset();

	// initialize GPIOs
	Camera_initGPIO();
#if USE_NVMH > 0
	EXTFRAM_initGPIO();
#endif
	SDcard_initGPIO();
	EMU_init();
	EMU_configure(DEFAULT_VOLTAGE, 0);		// set EMU voltage to default

	// set other GPIOs and unlock GPIO pins
	GPIO_init();

	// TASKCHAR: turn off camera after power up
	//Camera_turnPowerOff();
	// TASKCHAR: For Task Characterization:
	//GPIO_setOutputHighOnPin(GPIO_PORT_CUSTOM2, GPIO_PIN_CUSTOM2);

	// check download mode
	if (GPIO_getInputPinValue(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON) == GPIO_INPUT_PIN_LOW) {

	    clock_frequency = 48000000;
		ChangeClock(clock_frequency, 1);				// Change Clock to 48 MHz

		// load task state and pointers
		load_task_state();

		GPIO_setOutputHighOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);
		task_serial_flush();
		GPIO_setOutputLowOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);

		system_task_next_state = system_task_state;

		// store task state and pointers
		save_task_state();

		// configure burst size (no voltage) for next burst
		EMU_configure(DEFAULT_VOLTAGE, system_task_burst_size[system_task_next_state]);

		enterLPM45();
	}
	// set GPIO pin for start button to output direction and to low
	GPIO_setAsOutputPin(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON);
	GPIO_setOutputLowOnPin(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON);


	// if cold-start (i.e. not GPIO triggered wakeup from LPM4.5) -> enter LPM4.5 directly
	if ( !GPIOwakeup ) {

		// turn off camera after power up
		Camera_turnPowerOff();

#if USE_NVMH > 0
		// load next task state
		load_task_state();
#else
		system_task_state = SYSTEM_TASK_CAMERA;
#endif
		// ONLY FOR POWER MEASUREMENTS: reset SD card pointer
		//system_sdcard_pointer = 0;

		// configure burst size (no voltage) for next burst
		EMU_configure(DEFAULT_VOLTAGE, system_task_burst_size[system_task_state]);

		enterLPM45();
	} else {
#if USE_NVMH > 0
		// load previous state
		load_state();
#else
		system_task_state = SYSTEM_TASK_CAMERA;
#endif
	}

	// configure burst size and voltage for next burst
	EMU_configure(system_task_voltage[system_task_state], system_task_burst_size[system_task_state]);

	// system state machine
	switch (system_task_state) {

	case SYSTEM_TASK_CAMERA:

		if ( clock_frequency != 48000000 ) {
			clock_frequency = 48000000;
			ChangeClock(clock_frequency, 1);				// Change Clock to 24 MHz
		}

		//GPIO_setOutputHighOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);
		task_camera();
		//GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);

		EMU_configure(system_task_voltage[SYSTEM_TASK_PROCESS], system_task_burst_size[system_task_state]);

		//task_fpn();
		task_process();

#if USE_NVMH > 0
		// FRAM Ring Buffer
		system_fram_pointer++;		// Store images in a new dataset -> Increase FRAM pointer
		if ( system_fram_pointer >= FRAM_DATASET_CAPACITY ) {
			system_fram_pointer = 0;		// Wrap FRAM ring buffer around
		}

		system_fram_buffer_size++;
#else

		EMU_configure(system_task_voltage[SYSTEM_TASK_SDCARD_WRITE], system_task_burst_size[system_task_state]);

		task_sdcard_write();

#endif
#if USE_NVMH == 2
		// FRAM Buffer not full yet?
		if ( system_fram_buffer_size < FRAM_DATASET_CAPACITY ) {
			system_task_next_state = SYSTEM_TASK_CAMERA;

		// FRAM Buffer full?
		} else {
			system_fram_buffer_size = FRAM_DATASET_CAPACITY;		// Avoid wrong values...
			system_task_next_state = SYSTEM_TASK_SDCARD_FLUSH;
		}
#elif USE_NVMH == 1

		system_task_next_state = SYSTEM_TASK_SDCARD_WRITE;

#else
		system_task_next_state = SYSTEM_TASK_CAMERA;
#endif

		//TASKCHAR
		//GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM3, GPIO_PIN_CUSTOM3);

		break;
#if USE_NVMH == 2
	case SYSTEM_TASK_SDCARD_FLUSH:

	    clock_frequency = 48000000;
		ChangeClock(clock_frequency, 1);				// Change Clock to 48 MHz

		// TASKCHAR
		//GPIO_setOutputHighOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);
		//task_serial_send();

		// Flush FRAM Buffer to SD Card and decrease FRAM pointer by number of successfully written images
		uint8_t written_images = 0;
#if USE_FAT
		written_images = task_sdcard_flush_FAT();
#else
		written_images = task_sdcard_flush();
#endif

		system_fram_buffer_size -= written_images;

		if ( written_images != 0 ) {
			system_task_next_state = SYSTEM_TASK_CAMERA;
		} else {
			// No successful writes -> try flush task again
			system_task_next_state = SYSTEM_TASK_SDCARD_FLUSH;
		}

		// TASKCHAR
		//system_task_next_state = SYSTEM_TASK_SDCARD_FLUSH;
		//GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);

		break;
#elif USE_NVMH == 1
	case SYSTEM_TASK_SDCARD_WRITE:

	    clock_frequency = 48000000;
		ChangeClock(clock_frequency, 1);				// Change Clock to 48 MHz

		//TASKCHAR
		//GPIO_setOutputHighOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);

#if USE_FAT
		task_sdcard_write_FAT();
#else
		task_sdcard_write();
#endif

		system_fram_buffer_size--;	// decrease FRAM buffer size

		system_task_next_state = SYSTEM_TASK_CAMERA;

		// TASKCHAR
		//system_task_next_state = SYSTEM_TASK_SDCARD_FLUSH;
		//GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);

		break;
#endif
	default:
		// undefined state: start in initial state
		system_task_next_state = SYSTEM_TASK_CAMERA;

		break;
	}

#if USE_NVMH > 0
	save_state();
#endif

	// configure burst size (no voltage) for next burst
	EMU_configure(DEFAULT_VOLTAGE, system_task_burst_size[system_task_next_state]);

	// If GPIO wakeup trigger pin is still high -> directly execute next task without going into LPM4.5
	//if ( GPIO_getInputPinValue(GPIO_PORT_LPM_WAKEUP, GPIO_PIN_LPM_WAKEUP) == GPIO_INPUT_PIN_HIGH ) {
		//GPIOwakeup = true;
		//goto restart;
	//}

	enterLPM45();
}

/**
 * Enter the low power mode 4.5 with GPIO wakeup trigger enabled
 */
void enterLPM45(void) {
	// power down external peripherals
	EXTFRAM_powerOff();
	SDcard_disable();
	Camera_disable();

	// TASKCHAR: For Task Characterization:
	//GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM2, GPIO_PIN_CUSTOM2);
	//ResetCtl_initiateHardReset();

	// configure LPM wakeup interrupt pin
	GPIO_clearInterruptFlag(GPIO_PORT_LPM_WAKEUP, GPIO_getEnabledInterruptStatus(GPIO_PORT_LPM_WAKEUP));
	GPIO_enableInterrupt(GPIO_PORT_LPM_WAKEUP, GPIO_PIN_LPM_WAKEUP);
    Interrupt_enableInterrupt(INT_PORT4);
    Interrupt_enableMaster();

	// Ensure that PCM_CTL1_LOCKLPM5 and PCM_CTL1_LOCKBKUP are cleared and use "RudeMode" to enter LPM
	//PCM->CTL1 = PCM_CTL1_KEY_VAL;
	//PCM_enableRudeMode();
	// Enter LPM4.5
	SCB->SCR |= (SCB_SCR_SLEEPDEEP_Msk);
	PCM->CTL0 = PCM_CTL0_KEY_VAL | PCM_CTL0_LPMR__LPM45;
	__sleep();
	__no_operation();	// For Debugger
}


/* Port 4 interrupt service routine */
void PORT4_IRQHandler(void) {
	GPIO_clearInterruptFlag(GPIO_PORT_LPM_WAKEUP, GPIO_getEnabledInterruptStatus(GPIO_PORT_LPM_WAKEUP));

	// Disable GPIO Interrupt, such that the program can not be interrupted by further GPIO interrupts
    Interrupt_disableInterrupt(INT_PORT4);

    GPIOwakeup = true;
}


/*
 * Converts integer to string
 */
char *itoa(int num, char *str, int radix) {
	char sign = 0;
	char temp[17];  //an int can only be 16 bits long
					//at radix 2 (binary) the string
					//is at most 16 + 1 null long.
	int temp_loc = 0;
	int digit;
	int str_loc = 0;

	//save sign for radix 10 conversion
	if (radix == 10 && num < 0) {
		sign = 1;
		num = -num;
	}

	//construct a backward string of the number.
	do {
		digit = (unsigned int)num % radix;
		if (digit < 10)
			temp[temp_loc++] = digit + '0';
		else
			temp[temp_loc++] = digit - 10 + 'A';
		num = (((unsigned int)num) / radix);
	} while ((unsigned int)num > 0);

	//now add the sign for radix 10
	if (radix == 10 && sign) {
		temp[temp_loc] = '-';
	} else {
		temp_loc--;
	}


	//now reverse the string.
	while ( temp_loc >=0 ) {// while there are still chars
		str[str_loc++] = temp[temp_loc--];
	}
	str[str_loc] = 0; // add null termination.

	return str;
}
