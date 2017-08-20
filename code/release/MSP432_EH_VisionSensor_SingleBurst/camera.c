#include <stdbool.h>
#include <stdint.h>

#include "driverlib.h"

#include "gpio.h"

#include "camera.h"


#ifndef DEMOBOARD
#define DEMOBOARD 	0
#endif

/* DMA Control Table */
/*
#ifdef ewarm
#pragma data_alignment=256
#else
#pragma DATA_ALIGN(DMAcontrolTable, 256)
#endif
uint8_t DMAcontrolTable[256];
*/

uint8_t* image_base;
const uint8_t* mask_base;
uint32_t pixel_counter = 0;

/// Camera reading image flag, i.e. camera busy flag.
volatile bool camera_busy = false;

/**
 * Initialize GPIO pins used by the camera.
 * @note GPIO pins are configured only. Set up camera specific
 * peripherals using Camera_init()!
 */
void Camera_initGPIO() {
	// configure GPIO pins

	// digital outputs, reset state all ground
	GPIO_setAsOutputPin(CAMERA_PORT_RESP, CAMERA_PIN_RESP);
	GPIO_setOutputLowOnPin(CAMERA_PORT_RESP, CAMERA_PIN_RESP);
	GPIO_setAsOutputPin(CAMERA_PORT_INCP, CAMERA_PIN_INCP);
	GPIO_setOutputLowOnPin(CAMERA_PORT_INCP, CAMERA_PIN_INCP);
	GPIO_setAsOutputPin(CAMERA_PORT_RESV, CAMERA_PIN_RESV);
	GPIO_setOutputLowOnPin(CAMERA_PORT_RESV, CAMERA_PIN_RESV);
	GPIO_setAsOutputPin(CAMERA_PORT_INCV, CAMERA_PIN_INCV);
	GPIO_setOutputLowOnPin(CAMERA_PORT_INCV, CAMERA_PIN_INCV);
//	GPIO_setAsOutputPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);
//	GPIO_setOutputLowOnPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);

	// camera select, select by default (HI enable)
	GPIO_setAsOutputPin(CAMERA_PORT_SELECT, CAMERA_PIN_SELECT);
	GPIO_setOutputHighOnPin(CAMERA_PORT_SELECT, CAMERA_PIN_SELECT);

	// analog trigger output
//	GPIO_setAsPeripheralModuleFunctionOutputPin(CAMERA_PORT_ADCTRIGGER, CAMERA_PIN_ADCTRIGGER, GPIO_PRIMARY_MODULE_FUNCTION);

	// analog input
	GPIO_setAsPeripheralModuleFunctionInputPin(CAMERA_PORT_ANALOG, CAMERA_PIN_ANALOG, GPIO_TERTIARY_MODULE_FUNCTION);

	// power supply switch, NOT USED IN PROTOTYPE!
#if DEMOBOARD > 1
//#if CAMERA_ENABLE_LOW
	//GPIO_setOutputLowOnPin(CAMERA_PORT_POWER, CAMERA_PIN_POWER);
//#else
	//GPIO_setOutputHighOnPin(CAMERA_PORT_POWER, CAMERA_PIN_POWER);
//#endif
	GPIO_setOutputHighOnPin(CAMERA_PORT_POWER, CAMERA_PIN_POWER);
	GPIO_setAsOutputPin(CAMERA_PORT_POWER, CAMERA_PIN_POWER);
#endif
}


/**
 * Initialize the camera pins, the ADC and PWM timers.
 */
void Camera_init(void) {

	pixel_counter = 0;

	/* Internal Reference */

	// wait for reference to become idle
	//while (REFCTL0 & REFGENBUSY) {
	//	continue;
	//}

	// set reference to 1.2V and enable it ((optinal REFTCOFF: temperature sensor disbled for power saving)
	//	REFCTL0 = REFVSEL_0 | REFTCOFF | REFON;)
	REFCTL0 = (REFVSEL_0 | REFON);

	// Reset ADC
	ADC14->CTL0 = 0;
	ADC14->CTL1 = 0;
	ADC14->MCTL[11] = 0;
	ADC14->IER0 = 0;
	ADC14->IER1 = 0;
	ADC14->CLRIFGR0 = 0xFFFFFFFF;
	ADC14->CLRIFGR1 = 0xFFFFFFFF;

	/* Initializing ADC (SMCLK/DIV) */
	ADC14_enableModule();
	ADC14_initModule(ADC_CLOCKSOURCE_SMCLK, ADC_PREDIVIDER_1, CAMERA_ADC_CLOCK_DIV, 0);

	/* Configuring ADC Memory (ADC_MEM1 with repeat)
	 * with internal 2.5v reference */
	ADC14_configureSingleSampleMode(ADC_MEM11, true);
	ADC14_configureConversionMemory(ADC_MEM11,
			ADC_VREFPOS_INTBUF_VREFNEG_VSS,
			ADC_INPUT_A11, ADC_NONDIFFERENTIAL_INPUTS);

	//ADC14_setResolution(ADC_8BIT);
	ADC14_setResolution(ADC_10BIT);

	// start ADC in repeated single-channel sampling
    ADC14_enableSampleTimer(ADC_AUTOMATIC_ITERATION);

#if CAMERA_POLLING == 0
    /* Enabling Interrupts */
    ADC14_enableInterrupt(ADC_INT11);
    Interrupt_enableInterrupt(INT_ADC14);
    Interrupt_enableMaster();
#endif

	// stop ADC
	ADC14->CTL0 &= ~(ADC14_CTL0_ON);

	// Reset Timers
	TA0CTL &= TACLR;
	TA1CTL &= TACLR;
	TA2CTL &= TACLR;
	TA3CTL &= TACLR;

	// configure TA0 in up mode
	const Timer_A_UpModeConfig timer_a0_init_struct =
	{
	        TIMER_A_CLOCKSOURCE_SMCLK,              // SMCLK Clock Source
			CAMERA_TIMER_CLOCK_DIV,          // Divider = 2
			CAMERA_ROW_TIMER_CYCLES - 1,            // time period
	        TIMER_A_TAIE_INTERRUPT_DISABLE,         // disable Timer interrupt
	        TIMER_A_CCIE_CCR0_INTERRUPT_DISABLE ,   // disable CCR0 interrupt
			TIMER_A_SKIP_CLEAR					   // skip clear
	};
	Timer_A_configureUpMode(TIMER_A0_BASE, &timer_a0_init_struct);

	// configure TA0.2 output compare for camera RESP
	const Timer_A_CompareModeConfig timer_a0_init_compare2_struct =
	{
	        TIMER_A_CAPTURECOMPARE_REGISTER_2,          // Use CCR2
	        TIMER_A_CAPTURECOMPARE_INTERRUPT_DISABLE,   // Disable CCR interrupt
	        TIMER_A_OUTPUTMODE_RESET_SET,               // reset/set output
			CAMERA_PULSE_TIMER_CYCLES                   // Compare Value
	};
	Timer_A_initCompare(TIMER_A0_BASE, &timer_a0_init_compare2_struct);

	// configure TA1 in up mode
	const Timer_A_UpModeConfig timer_a1_init_struct =
	{
	        TIMER_A_CLOCKSOURCE_SMCLK,              // SMCLK Clock Source
			CAMERA_TIMER_CLOCK_DIV,          // Divider = 2
			CAMERA_PIXEL_TIMER_CYCLES - 1,          // time period
	        TIMER_A_TAIE_INTERRUPT_DISABLE,         // disable Timer interrupt
	        TIMER_A_CCIE_CCR0_INTERRUPT_DISABLE ,   // disable CCR0 interrupt
			TIMER_A_SKIP_CLEAR					   // skip clear
	};
	Timer_A_configureUpMode(TIMER_A1_BASE, &timer_a1_init_struct);

	// configure TA1.1 output compare for triggering ADC
	const Timer_A_CompareModeConfig timer_a1_init_compare1_struct =
	{
	        TIMER_A_CAPTURECOMPARE_REGISTER_1,          // Use CCR1
	        TIMER_A_CAPTURECOMPARE_INTERRUPT_DISABLE,   // Disable CCR interrupt
	        TIMER_A_OUTPUTMODE_SET,               	   // set output
			CAMERA_PIXEL_TIMER_CYCLES - CAMERA_INCV_OFFSET_TIMER_CYCLES - CAMERA_ADC_START_DELAY_TIMER_CYCLES - 1      // Compare Value
	};
	Timer_A_initCompare(TIMER_A1_BASE, &timer_a1_init_compare1_struct);

	// configure TA1.2 output compare for trigger camera INCV
	const Timer_A_CompareModeConfig timer_a1_init_compare2_struct =
	{
	        TIMER_A_CAPTURECOMPARE_REGISTER_2,          // Use CCR2
	        TIMER_A_CAPTURECOMPARE_INTERRUPT_DISABLE,   // Disable CCR interrupt
			TIMER_A_OUTPUTMODE_RESET_SET,               // reset/set output
			CAMERA_PULSE_TIMER_CYCLES      			   // Compare Value
	};
	Timer_A_initCompare(TIMER_A1_BASE, &timer_a1_init_compare2_struct);

	// configure TA3 in up mode					-> MSP430: TB0
	const Timer_A_UpModeConfig timer_a3_init_struct =
	{
	        TIMER_A_CLOCKSOURCE_SMCLK,              // SMCLK Clock Source
			CAMERA_TIMER_CLOCK_DIV,          // Divider = 2
			CAMERA_ROW_TIMER_CYCLES - 1,            // time period
	        TIMER_A_TAIE_INTERRUPT_DISABLE,         // disable Timer interrupt
	        TIMER_A_CCIE_CCR0_INTERRUPT_DISABLE ,   // disable CCR0 interrupt
			TIMER_A_DO_CLEAR					   	   // clear value
	};
	Timer_A_configureUpMode(TIMER_A3_BASE, &timer_a3_init_struct);

	// configure TA3.1 output compare for triggering camera INCP		-> MSP430: TB0.1
	const Timer_A_CompareModeConfig timer_a3_init_compare1_struct =
	{
	        TIMER_A_CAPTURECOMPARE_REGISTER_1,          // Use CCR1
	        TIMER_A_CAPTURECOMPARE_INTERRUPT_DISABLE,   // Disable CCR interrupt
			TIMER_A_OUTPUTMODE_RESET_SET,               // reset/set output
			CAMERA_PULSE_TIMER_CYCLES      			   // Compare Value
	};
	Timer_A_initCompare(TIMER_A3_BASE, &timer_a3_init_compare1_struct);

	// configure TA3.2 output compare for triggering camera RESV		-> MSP430: TB0.2
	const Timer_A_CompareModeConfig timer_a3_init_compare2_struct =
	{
	        TIMER_A_CAPTURECOMPARE_REGISTER_2,          // Use CCR2
	        TIMER_A_CAPTURECOMPARE_INTERRUPT_DISABLE,   // Disable CCR interrupt
			TIMER_A_OUTPUTMODE_SET_RESET,               // set/reset output
			CAMERA_ROW_TIMER_CYCLES - CAMERA_PULSE_TIMER_CYCLES      // Compare Value
	};
	Timer_A_initCompare(TIMER_A3_BASE, &timer_a3_init_compare2_struct);

}

/**
 * The camera initialization sequence that turns on the camera and configures the registers.
 * @param nbias Column readout supply
 * @param aobias Bias for output buffer amplifier
 * @param gain The amplifier gain. From 1 to 7, or 0 to bypass
 * @param vref The reference voltage gain for amlifier, not used if amplifier
 *  bypassed.
 */
void Camera_configure(uint8_t nbias, uint8_t aobias, uint8_t gain, uint8_t vref) {
	// 1) configure biases
	Camera_writeRegister(CAMERA_REG_NBIAS, nbias);
	Camera_writeRegister(CAMERA_REG_AOBIAS, aobias);

	// 2) set binning switches (or reset to disable)
	Camera_writeRegister(CAMERA_REG_VSW, 0);
	Camera_writeRegister(CAMERA_REG_HSW, 0);

	// 3) set reference voltage, if amplifier used
	if (gain > 0) {
		Camera_writeRegister(CAMERA_REG_VREF, vref);
	}

	// 4) configure chip and switch it on
	Camera_turnPowerOn(gain);
}

/**
 * Check if camera is currently busy reading an image.
 * @return 0 if idle, 1 if busy
 */
bool Camera_isBusy(void) {
	return camera_busy;
}

/**
 * Enable the power supply of the camera module, select and configure the camera.
 */
void Camera_enable(void) {
#if CAMERA_ENABLE_LOW
	//GPIO_setOutputLowOnPin(CAMERA_PORT_POWER, CAMERA_PIN_POWER);
#else
	//GPIO_setOutputHighOnPin(CAMERA_PORT_POWER, CAMERA_PIN_POWER);
#endif
	GPIO_setOutputHighOnPin(CAMERA_PORT_SELECT, CAMERA_PIN_SELECT);
}

/**
 * Disable the power supply of the camera module and deselect camera.
 */
void Camera_disable(void) {
#if CAMERA_ENABLE_LOW
	//GPIO_setOutputHighOnPin(CAMERA_PORT_POWER, CAMERA_PIN_POWER);
#else
	//GPIO_setOutputLowOnPin(CAMERA_PORT_POWER, CAMERA_PIN_POWER);
#endif
	GPIO_setOutputLowOnPin(CAMERA_PORT_SELECT, CAMERA_PIN_SELECT);

	Camera_disconnectPWM();

    ADC14_disableInterrupt(ADC_INT11);
    Interrupt_disableInterrupt(INT_ADC14);
    ADC14_disableModule();
	REFCTL0 &= ~REFON;
}

/**
 * Connect the output pins for PWM low power signaling.
 */
void Camera_connectPWM(void) {
	GPIO_setAsPeripheralModuleFunctionOutputPin(CAMERA_PORT_RESP,
	CAMERA_PIN_RESP, GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionOutputPin(CAMERA_PORT_INCP,
	CAMERA_PIN_INCP, GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionOutputPin(CAMERA_PORT_RESV,
	CAMERA_PIN_RESV, GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionOutputPin(CAMERA_PORT_INCV,
	CAMERA_PIN_INCV, GPIO_PRIMARY_MODULE_FUNCTION);
}

/**
 * Connect the output pins to standard GPIO out for software signaling.
 */
void Camera_disconnectPWM(void) {
	// hold output low before switching the pin mode
	GPIO_setOutputLowOnPin(CAMERA_PORT_RESP, CAMERA_PIN_RESP);
	GPIO_setOutputLowOnPin(CAMERA_PORT_INCP, CAMERA_PIN_INCP);
	GPIO_setOutputLowOnPin(CAMERA_PORT_RESV, CAMERA_PIN_RESV);
	GPIO_setOutputLowOnPin(CAMERA_PORT_INCV, CAMERA_PIN_INCV);

	// connect pins to gpio output module
	GPIO_setAsOutputPin(CAMERA_PORT_RESP, CAMERA_PIN_RESP);
	GPIO_setAsOutputPin(CAMERA_PORT_INCP, CAMERA_PIN_INCP);
	GPIO_setAsOutputPin(CAMERA_PORT_RESV, CAMERA_PIN_RESV);
	GPIO_setAsOutputPin(CAMERA_PORT_INCV, CAMERA_PIN_INCV);
}

/**
 * Send a puls on the corresponding camera input.
 * @param port The port of the camera input
 * @param pin The pin of the camera input
 */
void Camera_pulse(uint8_t port, uint16_t pin) {
	GPIO_setOutputHighOnPin(port, pin);
	GPIO_setOutputLowOnPin(port, pin);
}

/**
 * Send multiple pulses on the corresponding camera input.
 * @param port The port of the camera input
 * @param pin The pin of the camera input
 * @param pulses The number of pulses to send
 */
void Camera_pulseMulti(uint8_t port, uint16_t pin, uint8_t pulses) {
//	uint16_t port_addr = GPIO_PORT_TO_BASE[port] + OFS_PAOUT;
//	uint16_t pin_high = HWREG16(port_addr) | pin;
//	uint16_t pin_low = HWREG16(port_addr) & ~pin;
//
//	for (uint8_t p = 0; p < pulses; p++) {
//	    HWREG16(port_addr) = pin_high;
//	    HWREG16(port_addr) = pin_low;
//	}

	uint8_t p = 0;
	for (p = 0; p < pulses; p++) {
		Camera_pulse(port, pin);
	}
}

/**
 * Define mask for processing the images during acquisition
 * @param mask The base address of the 2 dimensional mask array
 */
void Camera_defineMask(const uint8_t* mask) {
	mask_base = mask;
}

/**
 * Read a complete image form the sensor.
 * @param image_base The base address of the 2 diminsional image array
 */
void Camera_readImage(uint8_t* image_base) {
	// select row register and reset it to 0
	Camera_selectRegister(CAMERA_REG_ROWSEL);
	Camera_pulse(CAMERA_PORT_RESV, CAMERA_PIN_RESV);

	// ensure that only ONE sample is measured
	ADC14_enableModule();
    ADC14_enableSampleTimer(ADC_MANUAL_ITERATION);

	// read first row, than column
	uint8_t row = 0;
	uint8_t col = 0;
	pixel_counter = 0;
	for (row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {

		// select column register and reset it to 0
		Camera_selectRegister(CAMERA_REG_COLSEL);
		Camera_pulse(CAMERA_PORT_RESV, CAMERA_PIN_RESV);

		// iterate over columns
		for (col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
			// read pixel value
#if CAMERA_MASK_PROCESSING > 0
			image_base[pixel_counter] = mask_base[pixel_counter] - Camera_readPixel();
			pixel_counter++;
#else
			image_base[pixel_counter++] = Camera_readPixel();
#endif
			// increment column
			Camera_pulse(CAMERA_PORT_INCV, CAMERA_PIN_INCV);
		}

		// select row register and increment once
		Camera_selectRegister(CAMERA_REG_ROWSEL);
		Camera_pulse(CAMERA_PORT_INCV, CAMERA_PIN_INCV);
	}
}

/**
 * Read the current pixel value. The position depends on the previously
 * set values of the row and column registers.
 * @return The pixel value.
 */
uint8_t Camera_readPixel(void) {
#if CAMERA_GAIN > 0
	// 1) operate amplifier by longer pulse (~one microsecond)
	GPIO_setOutputHighOnPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);
	__delay_cycles(CAMERA_AMPLIFY_DELAY_CYCLES);
	GPIO_setOutputLowOnPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);
#endif

	// 2) sample the analog output
    ADC14_enableConversion();
	ADC14_toggleConversionTrigger();

	// get the value
	return ADC14_getResult(CAMERA_ANALOG_MEMORY);
}

/**
 * Select the given register
 * @param address The address of the register to select
 */
void Camera_selectRegister(uint8_t address) {
	// reset pointer and increment to target address
	Camera_pulse(CAMERA_PORT_RESP, CAMERA_PIN_RESP);
	if (address > 0) {
		Camera_pulseMulti(CAMERA_PORT_INCP, CAMERA_PIN_INCP, address);
	}
}


/**
 *  This interrupt happens every time a conversion has completed.
 *  Not used, if CAMERA_POLLING == 1
 */
void Camera_ADC14_ISR(void)
{
    //uint64_t status;

    //status = ADC14_getEnabledInterruptStatus();
    //ADC14_clearInterruptFlag(status);

    //if(status & ADC_INT11)
    //{
#if CAMERA_MASK_PROCESSING > 0
		image_base[pixel_counter] = -(ADC14->MEM[11]) + mask_base[pixel_counter];
		pixel_counter++;
#else
		image_base[pixel_counter++] = ADC14->MEM[11];
#endif
		if ( pixel_counter == CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW + 1 ) {

			// stop ADC
			ADC14->CTL0 &= ~(ADC14_CTL0_ON | ADC14_CTL0_SC | ADC14_CTL0_ENC);

			// stop row timers, switch to software toggled pins
			TA0CTL &= ~(MC_3);
			TA1CTL &= ~(MC_3);
			TA3CTL &= ~(MC_3);

			Camera_disconnectPWM();

			// clear busy flag
			camera_busy = false;
		}
    //}
}

/**
 * Start aquireing camera image in low power mode with timers and DMA.
 * @param image_base The base address of the 2 diminsional image array
 * @note This low power acquisition mode does not support amplifier, set
 * gain to zero when using it.
 */
void Camera_startAquire(uint8_t* image) {
	image_base = image;

	// Set pixel counter to zero
	pixel_counter = 0;

	// set busy flag
	camera_busy = true;

	// reset column and row registers, pointer reseted to column register
	Camera_writeRegister(CAMERA_REG_ROWSEL, 0);
	Camera_writeRegister(CAMERA_REG_COLSEL, 0);

	// Setup ADC: ensure that ADC is in repeat mode
	// start ADC
	ADC14->CTL0 |= ADC14_CTL0_ON;
    ADC14_enableSampleTimer(ADC_AUTOMATIC_ITERATION);

	// clear ADC interrupts
	ADC14->CLRIFGR0 = 1;
	ADC14->CLRIFGR1 = 1;

	// connect PWM to output
	Camera_connectPWM();

	// set the counter start values, including start delay compensation
	TA3R = CAMERA_TA3_RESET_VALUE - CAMERA_TIMER_RESET_DOUBLE_OFFSET_TIMER_CYCLES;
	TA1R = CAMERA_TA1_RESET_VALUE - CAMERA_TIMER_RESET_SINGLE_OFFSET_TIMER_CYCLES;
	TA0R = CAMERA_TA0_RESET_VALUE - 0;

    // Triggering the start of the ADC
    ADC14_enableConversion();
    ADC14_toggleConversionTrigger();

	// wait for ADC reference buffer to be ready
	while (!(ADC14->IFGR1 & ADC14_IFGR1_RDYIFG)) {
		continue;
	}

	// coordinated timer start
	TA3CTL |= TIMER_A_UP_MODE;
	TA1CTL |= TIMER_A_UP_MODE;
	TA0CTL |= TIMER_A_UP_MODE;


#if CAMERA_POLLING > 0
	// ADC Polling
	//for ( pixel_counter = 0; pixel_counter != CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW + 1; pixel_counter++ ) {
	while ( pixel_counter != CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW + 1 ) {
		while (!(ADC14->IFGR0 & ADC14_IFGR0_IFG11));
		//while(image_base[pixel_counter] == ADC14->MEM[11]);
#if CAMERA_MASK_PROCESSING > 0
		image_base[pixel_counter] = mask_base[pixel_counter] - ADC14->MEM[11];
		pixel_counter++;
#else
		image_base[pixel_counter++] = ADC14->MEM[11];
#endif
	}

	// stop ADC
	ADC14->CTL0 &= ~(ADC14_CTL0_ON | ADC14_CTL0_SC | ADC14_CTL0_ENC);

	// stop row timers, switch to software toggled pins
	TA0CTL &= ~(MC_3);
	TA1CTL &= ~(MC_3);
	TA3CTL &= ~(MC_3);

	Camera_disconnectPWM();

	// clear busy flag
	camera_busy = false;
#else
	while(camera_busy);
#endif

}


/**
 * Turn the camera power on by setting the config register.
 * @param gain The gain to set in the config register
 */
void Camera_turnPowerOn(uint8_t gain) {
	uint8_t config_value = CAMERA_REG_CONFIG_ON;
	if (gain > 0) {
		config_value |= (CAMERA_REG_CONFIG_AMP | gain);
	}
	Camera_writeRegister(CAMERA_REG_CONFIG, config_value);
}

/**
 * Turn the camera power off by setting the config register.
 * The gain will automatically be reset to 0 as well.
 */
void Camera_turnPowerOff(void) {
	uint8_t config_value = CAMERA_REG_CONFIG_OFF;
	Camera_writeRegister(CAMERA_REG_CONFIG, config_value);
}

/**
 * Write a value to the camera register
 * @param address The address of the register to write
 * @param value The value to write into the register
 */
void Camera_writeRegister(uint8_t address, uint8_t value) {
	Camera_selectRegister(address);

	// reset register value and increment to value to write
	Camera_pulse(CAMERA_PORT_RESV, CAMERA_PIN_RESV);
	if (value > 0) {
		Camera_pulseMulti(CAMERA_PORT_INCV, CAMERA_PIN_INCV, value);
	}
}
