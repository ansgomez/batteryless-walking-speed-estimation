#include "driverlib.h"

/**
 * Initialize Analog-to-Digital Converter peripheral.
 */
void ADC_init(void) {

	// reset ADC registers
	ADC14->CTL0 = 0;
	ADC14->CTL1 = 0;

	// reset camera ADC memory CTL
	ADC14->MCTL[11] = 0;

	// wait for reference to become idle
	while (REFCTL0 & REFGENBUSY) {
		continue;
	}

	// set reference to 2.5V and enable it			-> MSP430: 2.0V		try 1.45V!
	REFCTL0 = (REFVSEL_3 | REFON);

	// configure ADC12 sample and hold times and enable multiple sample mode
	// setup sampling timer source and ADC clock to SMCLK, dividers set to 1
	ADC14->CTL0 = ADC14_CTL0_SHT1_0 | ADC14_CTL0_SHT0_0 | ADC14_CTL0_MSC | ADC14_CTL0_SHP | ADC14_CTL0_SSEL_4 | ADC14_CTL0_CONSEQ_2 | ADC14_CTL0_DIV__1;

	// configure sampling resolution to 14 bits			-> MSP430: 12 bits
	ADC14->CTL1 = ADC14_CTL1_RES_3;

	// configure ADC sampling start channel 11 and no internal sensor
    ADC14->CTL1 = (ADC14->CTL1 & ~(ADC14_CTL1_CSTARTADD_MASK)) | (11 << 16);

	// configure memory channel
	ADC14->MCTL[11] |= ADC14_MCTLN_INCH_11 | ADC_VREFPOS_INTBUF_VREFNEG_VSS;

	// enable ADC
	ADC14->CTL0 |= ADC14_CTL0_ON;

//	/* Initializing ADC (MCLK/1/1) */
//	ADC14_enableModule();
//	ADC14_initModule(ADC_CLOCKSOURCE_SMCLK, ADC_PREDIVIDER_1, ADC_DIVIDER_2, 0);
//
//	/* Configuring ADC Memory (ADC_MEM0 - ADC_MEM7 (A0 - A1)  with no repeat)
//	 * with internal 2.5v reference */
//	ADC14_configureSingleSampleMode(ADC_MEM11, true);
//	ADC14_configureConversionMemory(ADC_MEM11,
//			ADC_VREFPOS_INTBUF_VREFNEG_VSS,
//			ADC_INPUT_A11, ADC_NONDIFFERENTIAL_INPUTS);

}

/**
 * Clear global interrupt flags of the ADC. Only common flags in
 * ADC12IFGR2 are cleared. Channel based flages in ADC12IFGR0 and
 * ADC12IFGR0 are NOT cleared.
 */
void ADC_clearGlobalInterrupts(void) {
	// not used...

//	ADC12_B_clearInterrupt(ADC12_B_BASE, 2,
//			ADC12_B_INIFG | ADC12_B_LOIFG | ADC12_B_HIIFG | ADC12_B_OVIFG
//					| ADC12_B_TOVIFG | ADC12_B_RDYIFG);
}

/**
 * Clear all pending interrupts of the ADC.
 */
void ADC_clearInterruptVector(void) {
	// not used...

	//HWREG16(ADC12_B_BASE + OFS_ADC12IV) = 0x0000;
}
/**
 * Clear memory interrupt flag of the ADC for the given channel.
 * @param memory_channel The memory channel for which the interrupt flag
 * is cleared. Use one of the ADC12_B_MEMORY_x defines
 */
void ADC_clearMemoryInterrupt(uint16_t memory_channel) {
	// not used...

//	uint8_t interrupt_register = (memory_channel >> 9);
//	uint8_t memory_number = ((memory_channel >> 1) & 0x0f);
//	uint16_t memory_interrupt_flag = ((uint16_t) 0x01 << memory_number);
//	ADC12_B_clearInterrupt(ADC12_B_BASE, interrupt_register,
//			memory_interrupt_flag);
}

/**
 * Do a single ADC measurement with busy wait.
 * @param memory_channel The memory channel for which the measurement
 * should be done and read. Use one of the ADC12_B_MEMORY_x defines
 * @return The measured ADC value
 */
uint16_t ADC_measure(uint32_t memory_channel) {

	// ensure that only ONE sample is measured
    ADC14_enableSampleTimer(ADC_MANUAL_ITERATION);

    // Triggering the start of the sample
    ADC14_enableConversion();
    ADC14_toggleConversionTrigger();

	// get the value
	return ADC14_getResult(memory_channel);
}

/**
 * Start conversion of the ADC in single channel mode.
 * @param memory_channel The memory channel for which the measurement
 * should be done and read. Use one of the ADC12_B_MEMORY_x defines
 */
void ADC_start(uint8_t memory_channel) {
	// not used...

//	ADC12_B_startConversion(ADC12_B_BASE, memory_channel,
//	ADC12_B_SINGLECHANNEL);
}

/**
 * Start conversion of the ADC in repeated single channel mode.
 * @param memory_channel The memory channel for which the measurement
 * should be done and read. Use one of the ADC12_B_MEMORY_x defines
 */
void ADC_startRepeated(uint8_t memory_channel) {
	// not used...

//	uint16_t start_channel = (memory_channel >> 1);
//	ADC12_B_startConversion(ADC12_B_BASE, start_channel,
//	ADC12_B_REPEATED_SINGLECHANNEL);
}

/**
 * Stop conversion of the ADC.
 */
void ADC_stop(void) {
	// not used...

	//ADC12_B_disableConversions(ADC12_B_BASE, true);
}

/**
 * Turn the internal reference voltage generator on.
 */
void ADC_turnReferenceOn(void) {
	// first wait if source is busy
	while (REF_A_isRefGenBusy()) {
		continue;
	}

	// turn the voltage reference on
	REF_A_enableReferenceVoltage();
}

/**
 * Turn the internal reference voltage generator off.
 */
void ADC_turnReferenceOff(void) {
	// first wait if source is busy
	// wait for reference to become idle
	while (REF_A_isRefGenBusy()) {
		continue;
	}

	// turn the voltage reference off
	REF_A_disableReferenceVoltage();
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
