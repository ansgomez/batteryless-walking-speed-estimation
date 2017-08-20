#include <stdbool.h>
#include <stdint.h>

#include "driverlib.h"

#include "adc.h"
#include "gpio.h"
#include "main.h"

#include "camera.h"

/// Camera reading image flag, i.e. camera busy flag.
volatile bool camera_busy = false;

/**
 * Initialize the camera pins, the ADC input and PWM timers.
 * @note GPIO and timers are configured. Set up ADC separately
 * using Camera_setupADC()!
 */
void Camera_init(void) {
	// 1. configure pins
	// power supply switch, disabled by default
	GPIO_setAsOutputPin(CAMERA_PORT_ENABLE, CAMERA_PIN_ENABLE);
#if CAMERA_ENABLE_LOW
	GPIO_setOutputHighOnPin(CAMERA_PORT_ENABLE, CAMERA_PIN_ENABLE);
#elif
	GPIO_setOutputLowOnPin(CAMERA_PORT_ENABLE, CAMERA_PIN_ENABLE);
#endif

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
	GPIO_setAsPeripheralModuleFunctionOutputPin(CAMERA_PORT_ADCTRIGGER,
	CAMERA_PIN_ADCTRIGGER, GPIO_PRIMARY_MODULE_FUNCTION);

	// analog input
	GPIO_setAsPeripheralModuleFunctionInputPin(CAMERA_PORT_ANALOG,
	CAMERA_PIN_ANALOG, GPIO_TERNARY_MODULE_FUNCTION);

	// configure DMA

	// trigger from ADC
	DMACTL0 = DMA1TSEL__ADC12IFG;

	// set source address
	__data16_write_addr((uint16_t) &DMA1SA, (uint32_t) &ADC12MEM11);

	// wait with transfer during read-modify-write operations
	DMACTL4 = DMARMWDIS;

	// set transfer size to image size
	DMA1SZ = CAMERA_IMAGE_SIZE_COL * CAMERA_IMAGE_SIZE_ROW;

	// congifure DMA: repeated single mode, increasing destination address,
	// interrupt clear and enable
	DMA1CTL = DMADT_4 | DMADSTINCR_3 | DMAIE;

	// configure TA0 in up mode
	TIMER_A_initUpModeParam timer_a0_init_struct;
	timer_a0_init_struct.clockSource = TIMER_A_CLOCKSOURCE_SMCLK;
	timer_a0_init_struct.clockSourceDivider = TIMER_A_CLOCKSOURCE_DIVIDER_1;
	timer_a0_init_struct.timerPeriod = CAMERA_ROW_TIMER_CYCLES - 1;
	timer_a0_init_struct.timerInterruptEnable_TAIE =
	TIMER_A_TAIE_INTERRUPT_DISABLE;
	timer_a0_init_struct.captureCompareInterruptEnable_CCR0_CCIE =
	TIMER_A_CCIE_CCR0_INTERRUPT_DISABLE;
	timer_a0_init_struct.timerClear = TIMER_A_SKIP_CLEAR;
	timer_a0_init_struct.startTimer = false;
	TIMER_A_initUpMode(TIMER_A0_BASE, &timer_a0_init_struct);

	// configure TA0.2 output compare for camera RESP
	TIMER_A_initCompareModeParam timer_a0_init_compare2_struct;
	timer_a0_init_compare2_struct.compareRegister =
	TIMER_A_CAPTURECOMPARE_REGISTER_2;
	timer_a0_init_compare2_struct.compareInterruptEnable =
	TIMER_A_CAPTURECOMPARE_INTERRUPT_DISABLE;
	timer_a0_init_compare2_struct.compareOutputMode =
	TIMER_A_OUTPUTMODE_RESET_SET;
	timer_a0_init_compare2_struct.compareValue = CAMERA_PULSE_TIMER_CYCLES;
	TIMER_A_initCompareMode(TIMER_A0_BASE, &timer_a0_init_compare2_struct);

	// configure TA1 in up mode
	TIMER_A_initUpModeParam timer_a1_init_struct;
	timer_a1_init_struct.clockSource = TIMER_A_CLOCKSOURCE_SMCLK;
	timer_a1_init_struct.clockSourceDivider = TIMER_A_CLOCKSOURCE_DIVIDER_1;
	timer_a1_init_struct.timerPeriod = CAMERA_PIXEL_TIMER_CYCLES - 1;
	timer_a1_init_struct.timerInterruptEnable_TAIE =
	TIMER_A_TAIE_INTERRUPT_DISABLE;
	timer_a1_init_struct.captureCompareInterruptEnable_CCR0_CCIE =
	TIMER_A_CCIE_CCR0_INTERRUPT_DISABLE;
	timer_a1_init_struct.timerClear = TIMER_A_SKIP_CLEAR;
	timer_a1_init_struct.startTimer = false;
	TIMER_A_initUpMode(TIMER_A1_BASE, &timer_a1_init_struct);

	// configure TA1.1 output compare for triggering ADC
	TIMER_A_initCompareModeParam timer_a1_init_compare1_struct;
	timer_a1_init_compare1_struct.compareRegister =
	TIMER_A_CAPTURECOMPARE_REGISTER_1;
	timer_a1_init_compare1_struct.compareInterruptEnable =
	TIMER_A_CAPTURECOMPARE_INTERRUPT_DISABLE;
	timer_a1_init_compare1_struct.compareOutputMode =
	TIMER_A_OUTPUTMODE_SET;
	timer_a1_init_compare1_struct.compareValue = CAMERA_PIXEL_TIMER_CYCLES
			- CAMERA_INCV_OFFSET_TIMER_CYCLES
			- CAMERA_ADC_START_DELAY_TIMER_CYCLES - 1;
	TIMER_A_initCompareMode(TIMER_A1_BASE, &timer_a1_init_compare1_struct);

	// configure TA1.2 output compare for trigger camera INCV
	TIMER_A_initCompareModeParam timer_a1_init_compare2_struct;
	timer_a1_init_compare2_struct.compareRegister =
	TIMER_A_CAPTURECOMPARE_REGISTER_2;
	timer_a1_init_compare2_struct.compareInterruptEnable =
	TIMER_A_CAPTURECOMPARE_INTERRUPT_DISABLE;
	timer_a1_init_compare2_struct.compareOutputMode =
	TIMER_A_OUTPUTMODE_RESET_SET;
	timer_a1_init_compare2_struct.compareValue = CAMERA_PULSE_TIMER_CYCLES;
	TIMER_A_initCompareMode(TIMER_A1_BASE, &timer_a1_init_compare2_struct);

	// configure TB0 in up mode
	TIMER_B_initUpModeParam timer_b0_init_struct;
	timer_b0_init_struct.clockSource = TIMER_B_CLOCKSOURCE_SMCLK;
	timer_b0_init_struct.clockSourceDivider = TIMER_B_CLOCKSOURCE_DIVIDER_1;
	timer_b0_init_struct.timerPeriod = CAMERA_ROW_TIMER_CYCLES - 1;
	timer_b0_init_struct.timerInterruptEnable_TBIE =
	TIMER_B_TBIE_INTERRUPT_DISABLE;
	timer_b0_init_struct.captureCompareInterruptEnable_CCR0_CCIE =
	TIMER_B_CCIE_CCR0_INTERRUPT_DISABLE;
	timer_b0_init_struct.timerClear = TIMER_B_DO_CLEAR;
	timer_b0_init_struct.startTimer = false;
	TIMER_B_initUpMode(TIMER_B0_BASE, &timer_b0_init_struct);

	// configure TB0.1 output compare for triggering camera INCP
	TIMER_B_initCompareModeParam timer_b0_init_compare1_struct;
	timer_b0_init_compare1_struct.compareRegister =
	TIMER_B_CAPTURECOMPARE_REGISTER_1;
	timer_b0_init_compare1_struct.compareInterruptEnable =
	TIMER_B_CAPTURECOMPARE_INTERRUPT_DISABLE;
	timer_b0_init_compare1_struct.compareOutputMode =
	TIMER_B_OUTPUTMODE_RESET_SET;
	timer_b0_init_compare1_struct.compareValue = CAMERA_PULSE_TIMER_CYCLES;
	TIMER_B_initCompareMode(TIMER_B0_BASE, &timer_b0_init_compare1_struct);

	// configure TB0.2 output compare for triggering camera RESV
	TIMER_B_initCompareModeParam timer_b0_init_compare2_struct;
	timer_b0_init_compare2_struct.compareRegister =
	TIMER_B_CAPTURECOMPARE_REGISTER_2;
	timer_b0_init_compare2_struct.compareInterruptEnable =
	TIMER_B_CAPTURECOMPARE_INTERRUPT_DISABLE;
	timer_b0_init_compare2_struct.compareOutputMode =
	TIMER_B_OUTPUTMODE_SET_RESET;
	timer_b0_init_compare2_struct.compareValue = CAMERA_ROW_TIMER_CYCLES
			- CAMERA_PULSE_TIMER_CYCLES;
	TIMER_B_initCompareMode(TIMER_B0_BASE, &timer_b0_init_compare2_struct);
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
	GPIO_setOutputLowOnPin(CAMERA_PORT_ENABLE, CAMERA_PIN_ENABLE);
#elif
	GPIO_setOutputHighOnPin(CAMERA_PORT_ENABLE, CAMERA_PIN_ENABLE);
#endif
	GPIO_setOutputHighOnPin(CAMERA_PORT_SELECT, CAMERA_PIN_SELECT);
}

/**
 * Disable the power supply of the camera module and deselect camera.
 */
void Camera_disable(void) {
#if CAMERA_ENABLE_LOW
	GPIO_setOutputHighOnPin(CAMERA_PORT_ENABLE, CAMERA_PIN_ENABLE);
#elif
	GPIO_setOutputLowOnPin(CAMERA_PORT_ENABLE, CAMERA_PIN_ENABLE);
#endif
	GPIO_setOutputLowOnPin(CAMERA_PORT_SELECT, CAMERA_PIN_SELECT);
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
 * DMA interrupt handler for the image acquisition with DMA.
 * @return Signal wakeup after interrupt routine with true
 */
bool Camera_DMA_ISR(void) {
	// stop ADC (with preemption)
//	ADC12CTL0 &= ~(ADC12CONSEQ_3); // preempt
	ADC12CTL0 &= ~(ADC12ENC | ADC12ON);

	// stop row timers, switch to software toggled pins
	TA0CTL &= ~(MC_3);
	TA1CTL &= ~(MC_3);
	TB0CTL &= ~(MC_3);

	Camera_disconnectPWM();

//	// disable ADC interrupt
//	ADC12_B_disableInterrupt(ADC12_B_BASE, 0, 0, ADC12_B_OVIE);

	// clear busy flag
	camera_busy = false;

	return true;
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

	for (uint8_t p = 0; p < pulses; p++) {
		Camera_pulse(port, pin);
	}
}

/**
 * Setup global ADC settings for the camera interface, if shared with different
 * ADC measurements.
 * @note The intertal voltage reference of 1.2 volts needs to be configured separately.
 */
void Camera_setupADC(void) {

	// reset ADC registers
	ADC12CTL0 = 0;
	ADC12CTL1 = 0;
	ADC12CTL2 = 0;

	// reset camera ADC memory
	ADC12MCTL11 = 0;

	// wait for reference to become idle
	while (REFCTL0 & REFGENBUSY) {
		continue;
	}

	// set reference to 2.0V and enable it
	REFCTL0 = (REFVSEL_1 | REFON);

	// configure ADC12 sample and hold times and enable multiple sample mode
	ADC12CTL0 = ADC12SHT1_0 | ADC12SHT0_0 | ADC12MSC;

	// setup sampling timer source and ADC clock to SMCLK, dividers set to 1
	ADC12CTL1 = ADC12SHP | ADC12SSEL_3 | ADC12CONSEQ_2;

	// configure sampling resolution to 12 bits
	ADC12CTL2 = ADC12RES_2;

	// configure ADC sampling start channel and no internal sensor
	ADC12CTL3 = ADC12CSTARTADD_11;

	// configure memory channel
	ADC12MCTL11 |= (ADC12INCH_11 + ADC12VRSEL_1);

	// enable ADC
	ADC12CTL0 |= ADC12ON;
}

/**
 * Read a complete image form the sensor.
 * @param image_base The base address of the 2 diminsional image array
 */
void Camera_readImage(uint16_t* image_base) {
	// select row register and reset it to 0
	Camera_selectRegister(CAMERA_REG_ROWSEL);
	Camera_pulse(CAMERA_PORT_RESV, CAMERA_PIN_RESV);

	// read first row, than column
	for (uint8_t row = 0; row < CAMERA_IMAGE_SIZE_ROW; row++) {

		// select column register and reset it to 0
		Camera_selectRegister(CAMERA_REG_COLSEL);
		Camera_pulse(CAMERA_PORT_RESV, CAMERA_PIN_RESV);

		// iterate over columns
		for (uint8_t col = 0; col < CAMERA_IMAGE_SIZE_COL; col++) {
			// read pixel value
			uint16_t* pixel_ptr = image_base + row * CAMERA_IMAGE_SIZE_ROW
					+ col;
			*pixel_ptr = Camera_readPixel();

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
uint16_t Camera_readPixel(void) {
#if CAMERA_GAIN > 0
	// 1) operate amplifier by longer pulse (~one microsecond)
	GPIO_setOutputHighOnPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);
	__delay_cycles(CAMERA_AMPLIFY_DELAY_CYCLES);
	GPIO_setOutputLowOnPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);
#endif

	// 2) sample the analog output
	uint16_t adc = ADC_measure(CAMERA_ANALOG_MEMORY);

	return adc;

//	return (uint8_t) ((adc >> 0) & 0xff);
//	return (uint8_t) ((adc - 0x60 ) & 0xff);
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
 * Start aquireing camera image in low power mode with timers and DMA.
 * @param image_base The base address of the 2 diminsional image array
 * @note This low power acquisition mode does not support amplifier, set
 * gain to zero when using it.
 */
void Camera_startAquire(uint16_t* image_base) {
	// set busy flag
	camera_busy = true;

	// reset column and row registers, pointer reseted to column register
	Camera_writeRegister(CAMERA_REG_ROWSEL, 0);
	Camera_writeRegister(CAMERA_REG_COLSEL, 0);

	// reset ADC: no changes needed
	_nop();

	// clear ADC interrupts
	ADC12IFGR0 = 0;
	ADC12IFGR1 = 0;
	ADC12IFGR2 = 0;

	// set DMA destination and activate transfer
	uint32_t dst_addr = (uint32_t) image_base;
	__data16_write_addr((uint16_t) &DMA1DA, dst_addr);

	// connect PWM to output
	Camera_connectPWM();

	// calculate the timer enable configuration
	uint16_t timer_a0_config = TA0CTL | TIMER_A_UP_MODE;
	uint16_t timer_a1_config = TA1CTL | TIMER_A_UP_MODE;
	uint16_t timer_b0_config = TB0CTL | TIMER_B_UP_MODE;

	// set the counter start values, including start delay compensation
	TB0R = CAMERA_TB0_RESET_VALUE
			- CAMERA_TIMER_RESET_DOUBLE_OFFSET_TIMER_CYCLES;
	TA1R = CAMERA_TA1_RESET_VALUE
			- CAMERA_TIMER_RESET_SINGLE_OFFSET_TIMER_CYCLES;
	TA0R = CAMERA_TA0_RESET_VALUE - 0;

	// start ADC in repeated sampling
	ADC12CTL1 |= ADC12CONSEQ_2;
	ADC12CTL0 |= (ADC12ENC | ADC12SC | ADC12ON);
	DMA1CTL |= DMAEN;

	// wait for ADC reference buffer to be ready
	while (!(ADC12IFGR2 & ADC12RDYIFG)) {
		continue;
	}

	// coordinated timer start
	TB0CTL = timer_b0_config;
	TA1CTL = timer_a1_config;
	TA0CTL = timer_a0_config;
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
