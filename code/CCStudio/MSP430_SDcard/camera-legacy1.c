#include "driverlib.h"

#include "adc.h"
#include "camera-legacy1.h"

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

	// configure ADC, activation for adc needs to bee
	ADC12_B_configureMemoryParam adc_mem_struct;
	adc_mem_struct.memoryBufferControlIndex = CAMERA_ANALOG_MEMORY;
	adc_mem_struct.inputSourceSelect = CAMERA_ANALOG_CHANNEL;
	adc_mem_struct.refVoltageSourceSelect = ADC12_B_VREFPOS_INTBUF_VREFNEG_VSS;
	adc_mem_struct.endOfSequence = ADC12_B_NOTENDOFSEQUENCE;
	adc_mem_struct.windowComparatorSelect = ADC12_B_WINDOW_COMPARATOR_DISABLE;
	adc_mem_struct.differentialModeSelect = ADC12_B_DIFFERENTIAL_MODE_DISABLE;

	ADC12_B_configureMemory(ADC12_B_BASE, &adc_mem_struct);
}

/**
 * The camera initialization sequence that configures the camera registers.
 * @param nbias Column readout supply
 * @param aobias Bias for output buffer amplifier
 * @param gain The amplifier gain. From 1 to 7, or 0 to bypass
 * @param vref The reference voltage gain for amlifier, not used if amplifier
 *  bypassed.
 */
void Camera_configure(uint8_t nbias, uint8_t aobias, uint8_t gain,
		uint8_t vref) {
	// 1) configure biases
	Camera_writeRegister(CAMERA_REG_NBIAS, nbias);
	Camera_writeRegister(CAMERA_REG_AOBIAS, aobias);

	// 2) set binning switches (or reset to disable)
	Camera_writeRegister(CAMERA_REG_VSW, 0);
	Camera_writeRegister(CAMERA_REG_HSW, 0);

	// 3) set reference voltage
	Camera_writeRegister(CAMERA_REG_VREF, vref);

	// 4) configure chip and switch it on
	uint8_t config_value = CAMERA_REG_CONFIG_ON;
	if (gain > 0) {
		config_value |= (CAMERA_REG_CONFIG_AMP | gain);
	}
	Camera_writeRegister(CAMERA_REG_CONFIG, config_value);
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
	// not needed, so far no differences

	// configure ADC sampling mode
	ADC12_B_setupSamplingTimer(ADC12_B_BASE, CAMERA_ANALOG_SAMPLING_DELAY,
			CAMERA_ANALOG_SAMPLING_DELAY, ADC12_B_MULTIPLESAMPLESDISABLE);
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

bool Camera_DMA_ISR(void) {
	return false;
}

