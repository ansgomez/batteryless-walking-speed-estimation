#include "driverlib.h"

/**
 * Initialize Analog-to-Digital Converter peripheral.
 */
void ADC_init(void) {

	// initialize reference voltage source
	// first wait if source is busy
	while (Ref_A_isRefGenBusy(REF_A_BASE)) {
		continue;
	}

	// select the reference value of 2V
	Ref_A_setReferenceVoltage(REF_A_BASE, REF_A_VREF2_0V);

	// turn the voltage reference on
	Ref_A_enableReferenceVoltage(REF_A_BASE);

	// initialize ADC peripheral and enable it
	ADC12_B_initializeParam adc_init_struct = {
//		.sampleHoldSignalSourceSelect = ADC12_B_SAMPLEHOLDSOURCE_SC, // software trigger
		.sampleHoldSignalSourceSelect = ADC12_B_SAMPLEHOLDSOURCE_4, // TA1 CCR1 match
		.clockSourceSelect = ADC12_B_CLOCKSOURCE_SMCLK,
		.clockSourceDivider = ADC12_B_CLOCKDIVIDER_1,
		.clockSourcePredivider = ADC12_B_CLOCKPREDIVIDER__1,
		.internalChannelMap = ADC12_B_NOINTCH,
	};

	ADC12_B_initialize(ADC12_B_BASE, &adc_init_struct);
	ADC12_B_enable(ADC12_B_BASE);

	// sampling timer and memory channels to be configured in module functions

//	// wait for the reference module to be ready before continueing
//	while (Ref_A_isVariableReferenceVoltageOutputReady(REF_A_BASE)
//			== REF_A_NOTREADY) {
//		continue;
//	}

	// configure interrupt
	ADC12_B_clearInterrupt(ADC12_B_BASE, 0, ADC12_B_IFG0);
//	ADC12_B_enableInterrupt(ADC12_B_BASE, ADC12_B_IE0, 0, 0);
}

/**
 * Clear global interrupt flags of the ADC. Only common flags in
 * ADC12IFGR2 are cleared. Channel based flages in ADC12IFGR0 and
 * ADC12IFGR0 are NOT cleared.
 */
void ADC_clearGlobalInterrupts(void) {
	ADC12_B_clearInterrupt(ADC12_B_BASE, 2,
			ADC12_B_INIFG | ADC12_B_LOIFG | ADC12_B_HIIFG | ADC12_B_OVIFG
					| ADC12_B_TOVIFG | ADC12_B_RDYIFG);
}

/**
 * Clear all pending interrupts of the ADC.
 */
void ADC_clearInterruptVector(void) {
	HWREG16(ADC12_B_BASE + OFS_ADC12IV) = 0x0000;
}
/**
 * Clear memory interrupt flag of the ADC for the given channel.
 * @param memory_channel The memory channel for which the interrupt flag
 * is cleared. Use one of the ADC12_B_MEMORY_x defines
 */
void ADC_clearMemoryInterrupt(uint16_t memory_channel) {
	uint8_t interrupt_register = (memory_channel >> 9);
	uint8_t memory_number = ((memory_channel >> 1) & 0x0f);
	uint16_t memory_interrupt_flag = ((uint16_t) 0x01 << memory_number);
	ADC12_B_clearInterrupt(ADC12_B_BASE, interrupt_register,
			memory_interrupt_flag);
}

/**
 * Do a single ADC measurement with busy wait.
 * @param memory_channel The memory channel for which the measurement
 * should be done and read. Use one of the ADC12_B_MEMORY_x defines
 * @return The measured ADC value
 */
uint16_t ADC_measure(uint8_t memory_channel) {
	// start measurement
	uint16_t start_channel = (memory_channel >> 1);
	ADC12_B_startConversion(ADC12_B_BASE, start_channel, ADC12_B_SINGLECHANNEL);

	// stop the measurement again, including wait for conversion finished
	ADC12_B_disableConversions(ADC12_B_BASE, false);

	// get the value
	return ADC12_B_getResults(ADC12_B_BASE, memory_channel);
}

/**
 * Start conversion of the ADC in single channel mode.
 * @param memory_channel The memory channel for which the measurement
 * should be done and read. Use one of the ADC12_B_MEMORY_x defines
 */
void ADC_start(uint8_t memory_channel) {
	ADC12_B_startConversion(ADC12_B_BASE, memory_channel,
	ADC12_B_SINGLECHANNEL);
}

/**
 * Start conversion of the ADC in repeated single channel mode.
 * @param memory_channel The memory channel for which the measurement
 * should be done and read. Use one of the ADC12_B_MEMORY_x defines
 */
void ADC_startRepeated(uint8_t memory_channel) {
	uint16_t start_channel = (memory_channel >> 1);
	ADC12_B_startConversion(ADC12_B_BASE, start_channel,
	ADC12_B_REPEATED_SINGLECHANNEL);
}

/**
 * Stop conversion of the ADC.
 */
void ADC_stop(void) {
	ADC12_B_disableConversions(ADC12_B_BASE, true);
}

/**
 * Turn the internal reference voltage generator on.
 */
void ADC_turnReferenceOn(void) {
	// first wait if source is busy
	while (Ref_A_isRefGenBusy(REF_A_BASE)) {
		continue;
	}

	// turn the voltage reference on
	Ref_A_enableReferenceVoltage(REF_A_BASE);
}

/**
 * Turn the internal reference voltage generator off.
 */
void ADC_turnReferenceOff(void) {
	// first wait if source is busy
	while (Ref_A_isRefGenBusy(REF_A_BASE)) {
		continue;
	}

	// turn the voltage reference on
	Ref_A_disableReferenceVoltage(REF_A_BASE);
}

///**
// * Analog-to-Digital Converter interrupt service routine.
// * @note Not used in current configuration with DMA.
// */
//#pragma vector=ADC12_VECTOR
//__interrupt void ADC_ISR(void) {
//	if (ADC12_B_getInterruptStatus(ADC12_B_BASE, 0, ADC12_B_IFG0)) {
//		// read value
//		adc_value = ADC12_B_getResults(ADC12_B_BASE, ADC12_B_MEMORY_0);
//
//		// reset interrupt flag
//		ADC12_B_clearInterrupt(ADC12_B_BASE, 0, ADC12_B_IFG0);
//	}
//}
