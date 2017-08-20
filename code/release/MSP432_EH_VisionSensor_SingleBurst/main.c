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
		[SYSTEM_TASK_CAMERA] = EMU_VOLTAGE_3_0V,
		[SYSTEM_TASK_PROCESS] = EMU_VOLTAGE_2_2V,
		[SYSTEM_TASK_SDCARD_FLUSH] = EMU_VOLTAGE_2_8V,
		[SYSTEM_TASK_SDCARD_WRITE] = EMU_VOLTAGE_2_8V,
};

/// task burst sizes
const uint8_t system_task_burst_size[] = {
		[SYSTEM_TASK_UNDEFINED] = EMU_BURST1,
		[SYSTEM_TASK_CAMERA] = EMU_BURST4,
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
uint8_t system_task_state = SYSTEM_TASK_CAMERA;
/// system next state variable
//uint8_t system_task_next_state = SYSTEM_TASK_UNDEFINED;


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
	//EXTFRAM_initGPIO();
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

		if ( clock_frequency != 48000000 ) {
			clock_frequency = 48000000;
			ChangeClock(clock_frequency, 1);				// Change Clock to 48 MHz
		}

		// load task state and pointers
		//load_task_state();

		GPIO_setOutputHighOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);
		task_serial_flush();
		GPIO_setOutputLowOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);

		//system_task_next_state = system_task_state;

		// store task state and pointers
		//save_task_state();

		// configure burst size (no voltage) for next burst
		EMU_configure(DEFAULT_VOLTAGE, system_task_burst_size[SYSTEM_TASK_CAMERA]);

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
		//load_task_state();
#else
		//system_task_state = SYSTEM_TASK_CAMERA;
#endif
		// ONLY FOR POWER MEASUREMENTS: reset SD card pointer
		//system_sdcard_pointer = 0;

		// configure burst size (no voltage) for next burst
		EMU_configure(DEFAULT_VOLTAGE, system_task_burst_size[SYSTEM_TASK_CAMERA]);

		enterLPM45();
	} else {
		system_task_state = SYSTEM_TASK_CAMERA;
	}

	// configure burst size and voltage for next burst
	EMU_configure(system_task_voltage[system_task_state], system_task_burst_size[system_task_state]);

	// system state machine
	switch (system_task_state) {

	case SYSTEM_TASK_CAMERA:

		if ( clock_frequency != 24000000 ) {
			clock_frequency = 24000000;
			ChangeClock(clock_frequency, 1);				// Change Clock to 24 MHz
		}

		GPIO_setOutputHighOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);
		task_camera();
		GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);

		EMU_configure(system_task_voltage[SYSTEM_TASK_PROCESS], system_task_burst_size[system_task_state]);

		task_fpn();
		task_process();

		EMU_configure(system_task_voltage[SYSTEM_TASK_SDCARD_WRITE], system_task_burst_size[system_task_state]);

		if ( clock_frequency != 48000000 ) {
			clock_frequency = 48000000;
			ChangeClock(clock_frequency, 1);				// Change Clock to 48 MHz
		}

		//GPIO_setOutputHighOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);
		task_sdcard_write_withStateRetention();
		//GPIO_setOutputLowOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);

		//system_task_next_state = SYSTEM_TASK_CAMERA;

		//TASKCHAR
		//GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM3, GPIO_PIN_CUSTOM3);

		break;

	default:
		// undefined state: start in initial state
		//system_task_next_state = SYSTEM_TASK_CAMERA;

		break;
	}

	//save_state();

	// configure burst size (no voltage) for next burst
	EMU_configure(DEFAULT_VOLTAGE, system_task_burst_size[SYSTEM_TASK_CAMERA]);

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
	//EXTFRAM_powerOff();
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
