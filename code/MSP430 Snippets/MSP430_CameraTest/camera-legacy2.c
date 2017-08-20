#include <stdint.h>

#include "driverlib.h"

#include "adc.h"
#include "main.h"

#include "camera2.h"

/// Camera reading image flag, i.e. camera busy flag.
volatile bool camera_busy = false;

/// Camera current low power row to read
volatile uint8_t camera_row = 0;

/// Target location of the image to aquire
uint16_t* camera_image = 0;

/**
 * Initialize the camera pins and the ADC input.
 * @note Only ADC memory channel will be configured. Set up global
 * ADC and sampling timer options separately!
 */
void Camera_init(void) {
	// 1. configure pins
	// power supply switch, disabled by default
	GPIO_setAsOutputPin(CAMERA_PORT_ENABLE, CAMERA_PIN_ENABLE);
	GPIO_setOutputLowOnPin(CAMERA_PORT_ENABLE, CAMERA_PIN_ENABLE);

	// digital outputs, reset state all ground
	GPIO_setAsOutputPin(CAMERA_PORT_RESP, CAMERA_PIN_RESP);
	GPIO_setOutputLowOnPin(CAMERA_PORT_RESP, CAMERA_PIN_RESP);
	GPIO_setAsOutputPin(CAMERA_PORT_INCP, CAMERA_PIN_INCP);
	GPIO_setOutputLowOnPin(CAMERA_PORT_INCP, CAMERA_PIN_INCP);
	GPIO_setAsOutputPin(CAMERA_PORT_RESV, CAMERA_PIN_RESV);
	GPIO_setOutputLowOnPin(CAMERA_PORT_RESV, CAMERA_PIN_RESV);
	GPIO_setAsOutputPin(CAMERA_PORT_INCV, CAMERA_PIN_INCV);
	GPIO_setOutputLowOnPin(CAMERA_PORT_INCV, CAMERA_PIN_INCV);
	GPIO_setAsOutputPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);
	GPIO_setOutputLowOnPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);

	// camera select, select by default (HI enable)
	GPIO_setAsOutputPin(CAMERA_PORT_SELECT, CAMERA_PIN_SELECT);
	GPIO_setOutputHighOnPin(CAMERA_PORT_SELECT, CAMERA_PIN_SELECT);

	// analog input
	GPIO_setAsPeripheralModuleFunctionInputPin(CAMERA_PORT_ANALOG,
	CAMERA_PIN_ANALOG, GPIO_TERNARY_MODULE_FUNCTION);

	// configure ADC, activation for adc needs to be done within ADC setup
	ADC12_B_configureMemoryParam adc_mem_struct;
	adc_mem_struct.memoryBufferControlIndex = CAMERA_ANALOG_MEMORY;
	adc_mem_struct.inputSourceSelect = CAMERA_ANALOG_INPUT;
	adc_mem_struct.refVoltageSourceSelect = ADC12_B_VREFPOS_INTBUF_VREFNEG_VSS;
	adc_mem_struct.endOfSequence = ADC12_B_NOTENDOFSEQUENCE;
	adc_mem_struct.windowComparatorSelect = ADC12_B_WINDOW_COMPARATOR_DISABLE;
	adc_mem_struct.differentialModeSelect = ADC12_B_DIFFERENTIAL_MODE_DISABLE;

	ADC12_B_configureMemory(ADC12_B_BASE, &adc_mem_struct);

	// configure DMA

	// initialize DMA channel 1: trigger source 26 (ADC end of conversion)
	DMA_initializeParam dma_ch1_init_struct;
	dma_ch1_init_struct.channelSelect = CAMERA_DMA_CHANNEL;
	dma_ch1_init_struct.transferModeSelect = DMA_TRANSFER_SINGLE;
	dma_ch1_init_struct.transferSize = CAMERA_IMAGE_SIZE_COL;
	dma_ch1_init_struct.triggerSourceSelect = DMA_TRIGGERSOURCE_26; // ADC conversion ended triger
	dma_ch1_init_struct.transferUnitSelect = DMA_SIZE_SRCWORD_DSTWORD;
	dma_ch1_init_struct.triggerTypeSelect = DMA_TRIGGER_HIGH;
	DMA_initialize(&dma_ch1_init_struct);

	// configure DMA channel source (destination passed with start routine)
	DMA_setSrcAddress(CAMERA_DMA_CHANNEL,
			ADC12_B_getMemoryAddressForDMA(ADC12_B_BASE, CAMERA_ANALOG_MEMORY),
			DMA_DIRECTION_UNCHANGED);

	// clear and enable interrupt (enabled during start routine)
	DMA_clearInterrupt(CAMERA_DMA_CHANNEL);
	DMA_enableInterrupt(CAMERA_DMA_CHANNEL);

	// configure TA0 in up mode
	TIMER_A_initUpModeParam timer_a0_init_struct;
	timer_a0_init_struct.clockSource = TIMER_A_CLOCKSOURCE_SMCLK;
	timer_a0_init_struct.clockSourceDivider = TIMER_A_CLOCKSOURCE_DIVIDER_1;
	timer_a0_init_struct.timerPeriod = CAMERA_PIXEL_TIMER_CYCLES - 1;
	timer_a0_init_struct.timerInterruptEnable_TAIE =
	TIMER_A_TAIE_INTERRUPT_DISABLE;
	timer_a0_init_struct.captureCompareInterruptEnable_CCR0_CCIE =
	TIMER_A_CCIE_CCR0_INTERRUPT_DISABLE;
	timer_a0_init_struct.timerClear = TIMER_A_SKIP_CLEAR;
	timer_a0_init_struct.startTimer = false;
	TIMER_A_initUpMode(TIMER_A0_BASE, &timer_a0_init_struct);

	// configure TA0.2 output compare for INC VALUE
	TIMER_A_initCompareModeParam timer_a0_init_compare2_struct;
	timer_a0_init_compare2_struct.compareRegister =
	TIMER_A_CAPTURECOMPARE_REGISTER_2;
	timer_a0_init_compare2_struct.compareInterruptEnable =
	TIMER_A_CAPTURECOMPARE_INTERRUPT_DISABLE;
	timer_a0_init_compare2_struct.compareOutputMode =
	TIMER_A_OUTPUTMODE_SET_RESET;
	timer_a0_init_compare2_struct.compareValue = CAMERA_AMPLIFY_TIMER_CYCLES
			+ CAMERA_ANALOG_TIMER_CYCLES + CAMERA_ADC_TIMER_CYCLES;
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
	TIMER_A_OUTPUTMODE_SET_RESET;
	timer_a1_init_compare1_struct.compareValue = CAMERA_AMPLIFY_TIMER_CYCLES
			+ CAMERA_ANALOG_TIMER_CYCLES;
	TIMER_A_initCompareMode(TIMER_A1_BASE, &timer_a1_init_compare1_struct);

//	// configure TA1.2 output compare for trigger camera amplifier IN_PHI
//	TIMER_A_initCompareModeParam timer_a1_init_compare2_struct;
//	timer_a1_init_compare2_struct.compareRegister =
//	TIMER_A_CAPTURECOMPARE_REGISTER_2;
//	timer_a1_init_compare2_struct.compareInterruptEnable =
//	TIMER_A_CAPTURECOMPARE_INTERRUPT_DISABLE;
//	timer_a1_init_compare2_struct.compareOutputMode =
//	TIMER_A_OUTPUTMODE_RESET_SET;
//	timer_a1_init_compare2_struct.compareValue = CAMERA_AMPLIFY_TIMER_CYCLES;
//	TIMER_A_initCompareMode(TIMER_A1_BASE, &timer_a1_init_compare2_struct);

//	// configure TB0 in up mode
//	TIMER_B_initUpModeParam timer_b0_init_struct;
//	timer_b0_init_struct.clockSource = TIMER_B_CLOCKSOURCE_SMCLK;
//	timer_b0_init_struct.clockSourceDivider = TIMER_B_CLOCKSOURCE_DIVIDER_1;
//	timer_b0_init_struct.timerPeriod = CAMERA_ROW_TIMER_CYCLES;
//	timer_b0_init_struct.timerInterruptEnable_TBIE = TIMER_B_TBIE_INTERRUPT_DISABLE;
//	timer_b0_init_struct.captureCompareInterruptEnable_CCR0_CCIE = TIMER_B_CCIE_CCR0_INTERRUPT_DISABLE;
//	timer_b0_init_struct.timerClear = TIMER_B_DO_CLEAR;
//	timer_b0_init_struct.startTimer = false;
//	TIMER_B_initUpMode(TIMER_B0_BASE, &timer_b0_init_struct);
//
//
//	/* TIMER B0 CAMPTURE CONFIG MISSING  */
}

/**
 * The camera initialization sequence that configures the camera registers.
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
	uint8_t config_value = CAMERA_REG_CONFIG_ON;
	if (gain > 0) {
		config_value |= (CAMERA_REG_CONFIG_AMP | gain);
	}
	Camera_writeRegister(CAMERA_REG_CONFIG, config_value);
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
	GPIO_setOutputHighOnPin(CAMERA_PORT_ENABLE, CAMERA_PIN_ENABLE);
	GPIO_setOutputHighOnPin(CAMERA_PORT_SELECT, CAMERA_PIN_SELECT);
}

/**
 * Disable the power supply of the camera module and deselect camera.
 */
void Camera_disable(void) {
	GPIO_setOutputLowOnPin(CAMERA_PORT_ENABLE, CAMERA_PIN_ENABLE);
	GPIO_setOutputLowOnPin(CAMERA_PORT_SELECT, CAMERA_PIN_SELECT);
}

/**
 * Connect the output pins for PWM low power signaling.
 */
void Camera_connectPWM(void) {
//	GPIO_setAsPeripheralModuleFunctionOutputPin(CAMERA_PORT_RESP,
//			CAMERA_PIN_RESP, GPIO_PRIMARY_MODULE_FUNCTION);
//	GPIO_setAsPeripheralModuleFunctionOutputPin(CAMERA_PORT_INCP,
//			CAMERA_PIN_INCP, GPIO_PRIMARY_MODULE_FUNCTION);
//	GPIO_setAsPeripheralModuleFunctionOutputPin(CAMERA_PORT_RESV,
//			CAMERA_PIN_RESV, GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionOutputPin(CAMERA_PORT_INCV,
	CAMERA_PIN_INCV, GPIO_PRIMARY_MODULE_FUNCTION);
	GPIO_setAsPeripheralModuleFunctionOutputPin(CAMERA_PORT_INPHI,
	CAMERA_PIN_INPHI, GPIO_PRIMARY_MODULE_FUNCTION);
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
	GPIO_setOutputLowOnPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);

	// connect pins to gpio output module
	GPIO_setAsOutputPin(CAMERA_PORT_RESP, CAMERA_PIN_RESP);
	GPIO_setAsOutputPin(CAMERA_PORT_INCP, CAMERA_PIN_INCP);
	GPIO_setAsOutputPin(CAMERA_PORT_RESV, CAMERA_PIN_RESV);
	GPIO_setAsOutputPin(CAMERA_PORT_INCV, CAMERA_PIN_INCV);
	GPIO_setAsOutputPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);
}

/**
 * DMA interrupt handler for the image acquisition with DMA.
 * @return Signal wakeup after interrupt routine with true
 */
bool Camera_DMA_ISR(void) {
	// stop row timers, switch to software toggled pins
	TIMER_A_stop(TIMER_A0_BASE);
	TIMER_A_stop(TIMER_A1_BASE);

	Camera_disconnectPWM();

	// check if last row was read
	if (camera_row == CAMERA_IMAGE_SIZE_ROW) {
		// stop ADC (with preemption)
		ADC_stop();

		// clear busy flag
		camera_busy = false;

		// exit with low power termination to signal finised image aquire
		return true;
	}
	// else switch to next row
	camera_row++;

	// pulse sequence to switch row
	Camera_pulse(CAMERA_PORT_INCP, CAMERA_PIN_INCP);
	Camera_pulse(CAMERA_PORT_INCV, CAMERA_PIN_INCV);
	Camera_pulse(CAMERA_PORT_RESP, CAMERA_PIN_RESP);
	Camera_pulse(CAMERA_PORT_RESV, CAMERA_PIN_RESV);

	// enable DMA transfer for next row
	DMA_setDstAddress(CAMERA_DMA_CHANNEL,
			(uint32_t) (camera_image + camera_row * CAMERA_IMAGE_SIZE_COL),
			DMA_DIRECTION_INCREMENT);
	DMA_enableTransfers(CAMERA_DMA_CHANNEL);

	// reset timer counter registers
	TA0R = 0x0000;
	TA1R = 0x0000;

	// connect PWM to output and restart counter

	Camera_connectPWM();
	TIMER_A_startCounter(TIMER_A0_BASE, TIMER_A_UP_MODE);
	TIMER_A_startCounter(TIMER_A1_BASE, TIMER_A_UP_MODE);

	// do not exit low power
	return false;
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
	// initialize ADC peripheral and enable it
	ADC12_B_initializeParam adc_init_struct;
	adc_init_struct.sampleHoldSignalSourceSelect = ADC12_B_SAMPLEHOLDSOURCE_4; // TA1 CCR1 match
	adc_init_struct.clockSourceSelect = ADC12_B_CLOCKSOURCE_SMCLK;
	adc_init_struct.clockSourceDivider = ADC12_B_CLOCKDIVIDER_1;
	adc_init_struct.clockSourcePredivider = ADC12_B_CLOCKPREDIVIDER__1;
	adc_init_struct.internalChannelMap = ADC12_B_NOINTCH;
	ADC12_B_initialize(ADC12_B_BASE, &adc_init_struct);

	ADC12_B_enable(ADC12_B_BASE);

	// configure ADC sampling mode
	ADC12_B_setupSamplingTimer(ADC12_B_BASE, CAMERA_ANALOG_SAMPLING_DELAY,
	CAMERA_ANALOG_SAMPLING_DELAY, ADC12_B_MULTIPLESAMPLESDISABLE);
	ADC12_B_setResolution(ADC12_B_BASE, ADC12_B_RESOLUTION_12BIT);

	// configure ADC interrupts
	ADC12_B_clearInterrupt(ADC12_B_BASE, 0, ADC12_B_IFG0);
//	ADC12_B_enableInterrupt(ADC12_B_BASE, ADC12_B_IE0, 0, 0);
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
	// 1) operate amplifier by longer pulse (~one microsecond)
	GPIO_setOutputHighOnPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);
	__delay_cycles(CAMERA_AMPLIFY_DELAY_CYCLES);
	GPIO_setOutputLowOnPin(CAMERA_PORT_INPHI, CAMERA_PIN_INPHI);

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
 */
void Camera_startAquire(uint16_t* image_base) {
	// set busy flag, reset row counter
	camera_busy = true;
	camera_row = 0;
	camera_image = image_base;

	// reset column and row registers
	Camera_writeRegister(CAMERA_REG_ROWSEL, 0);
	Camera_writeRegister(CAMERA_REG_COLSEL, 0);

	// Reset ADC: no changes needed
	ADC_startRepeated(CAMERA_ANALOG_MEMORY);

	// set DMA destination, enable triggers
	DMA_setDstAddress(CAMERA_DMA_CHANNEL, (uint32_t) camera_image,
	DMA_DIRECTION_INCREMENT);
	DMA_enableTransfers(CAMERA_DMA_CHANNEL);

	// connect PWM to output
	Camera_connectPWM();

	// Reset timer counter values and restart
	Timer_A_startCounter(TIMER_A0_BASE, TIMER_A_UP_MODE);
	Timer_A_startCounter(TIMER_A1_BASE, TIMER_A_UP_MODE);
	TA0R = 0x0000;
	TA1R = 0x0000;
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
