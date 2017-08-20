#include "driverlib.h"

#include "gpio.h"

/**
 * Initialize all the GPIO pins
 */
void GPIO_init(void) {

	// configure LED output pin
	GPIO_setAsOutputPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);
	GPIO_setOutputLowOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);

	//configure custom pins
	GPIO_setAsOutputPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);
	GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);
	GPIO_setAsOutputPin(GPIO_PORT_CUSTOM2, GPIO_PIN_CUSTOM2);
	GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM2, GPIO_PIN_CUSTOM2);
	GPIO_setAsOutputPin(GPIO_PORT_CUSTOM3, GPIO_PIN_CUSTOM3);
	GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM3, GPIO_PIN_CUSTOM3);

	// unlock pins
	// Ensure that PCM_CTL1_LOCKLPM5 and PCM_CTL1_LOCKBKUP are cleared
	PCM->CTL1 = PCM_CTL1_KEY_VAL;

	// configure LPM wakeup interrupt pin
	//GPIO_setAsInputPin(GPIO_PORT_LPM_WAKEUP, GPIO_PIN_LPM_WAKEUP);
	GPIO_setAsInputPinWithPullDownResistor(GPIO_PORT_LPM_WAKEUP, GPIO_PIN_LPM_WAKEUP);
	GPIO_interruptEdgeSelect(GPIO_PORT_LPM_WAKEUP, GPIO_PIN_LPM_WAKEUP, GPIO_LOW_TO_HIGH_TRANSITION);
	__no_operation();	// Device Errata
	GPIO_clearInterruptFlag(GPIO_PORT_LPM_WAKEUP, GPIO_getEnabledInterruptStatus(GPIO_PORT_LPM_WAKEUP));
	GPIO_enableInterrupt(GPIO_PORT_LPM_WAKEUP, GPIO_PIN_LPM_WAKEUP);
	// Here, the GPIO ISR PORT4_IRQHandler is called, if an Interrupt is still pending (from GPIO wakeup from LPM4.5)

    Interrupt_enableInterrupt(INT_PORT4);
    Interrupt_enableMaster();


	// configure button S1 input pin
	GPIO_setAsInputPinWithPullUpResistor(GPIO_PORT_START_BUTTON, GPIO_PIN_START_BUTTON);

	// configure GPIO custom output pins for Energy Measurements
	/*
	GPIO_setAsOutputPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);
	GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM1, GPIO_PIN_CUSTOM1);
	GPIO_setAsOutputPin(GPIO_PORT_CUSTOM2, GPIO_PIN_CUSTOM2);
	GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM2, GPIO_PIN_CUSTOM2);
	GPIO_setAsOutputPin(GPIO_PORT_CUSTOM3, GPIO_PIN_CUSTOM3);
	GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM3, GPIO_PIN_CUSTOM3);
	GPIO_setAsOutputPin(GPIO_PORT_CUSTOM4, GPIO_PIN_CUSTOM4);
	GPIO_setOutputLowOnPin(GPIO_PORT_CUSTOM4, GPIO_PIN_CUSTOM4);
	 */
}

/**
 * Reset all GPIO pins to output low for power saving reasons
 */
void GPIO_reset(void) {

	// port PA (P1 & P2)
	GPIO_setAsOutputPin(GPIO_PORT_PA, PIN_ALL16);
	GPIO_setOutputLowOnPin(GPIO_PORT_PA, PIN_ALL16);

//	GPIO_setOutputLowOnPin(GPIO_PORT_PA,
//			GPIO_PIN0 | GPIO_PIN1 | GPIO_PIN2 | GPIO_PIN3 | GPIO_PIN4
//					| GPIO_PIN5 | GPIO_PIN6 | GPIO_PIN7 | GPIO_PIN8 | GPIO_PIN9
//					| GPIO_PIN10 | GPIO_PIN11 | GPIO_PIN12 | GPIO_PIN13
//					| GPIO_PIN14 | GPIO_PIN15);

	// port PB (P3 & P4)
	GPIO_setAsOutputPin(GPIO_PORT_PB, PIN_ALL16);
	GPIO_setOutputLowOnPin(GPIO_PORT_PB, PIN_ALL16);

//	GPIO_setOutputLowOnPin(GPIO_PORT_PB,
//			GPIO_PIN0 | GPIO_PIN1 | GPIO_PIN2 | GPIO_PIN3 | GPIO_PIN4
//					| GPIO_PIN5 | GPIO_PIN6 | GPIO_PIN7 | GPIO_PIN8 | GPIO_PIN9
//					| GPIO_PIN10 | GPIO_PIN11 | GPIO_PIN12 | GPIO_PIN13
//					| GPIO_PIN14 | GPIO_PIN15);

	// port PC (P5 & P6)
	GPIO_setAsOutputPin(GPIO_PORT_PC, PIN_ALL16);
	GPIO_setOutputLowOnPin(GPIO_PORT_PC, PIN_ALL16);

	// port PD (P7 & P8)
	GPIO_setAsOutputPin(GPIO_PORT_PD, PIN_ALL16);
	GPIO_setOutputLowOnPin(GPIO_PORT_PD, PIN_ALL16);

	// port PE (P9 & P10)
	GPIO_setAsOutputPin(GPIO_PORT_PE, PIN_ALL16);
	GPIO_setOutputLowOnPin(GPIO_PORT_PE, PIN_ALL16);

	// port PJ
	GPIO_setAsOutputPin(GPIO_PORT_PJ, PIN_ALL16);
	GPIO_setOutputLowOnPin(GPIO_PORT_PJ, PIN_ALL16);
}
