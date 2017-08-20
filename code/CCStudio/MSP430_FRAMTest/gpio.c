#include "driverlib.h"

#include "gpio.h"

/**
 * Initialize all the GPIO pins
 */
void GPIO_init(void) {
	// configure button S1 input pin
	GPIO_setAsInputPinWithPullUpResistor(GPIO_PORT_START_BUTTON,
	GPIO_PIN_START_BUTTON);

	// configure both (red and green) LED output pins
	GPIO_setAsOutputPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);
	GPIO_setAsOutputPin(GPIO_PORT_LED_RED, GPIO_PIN_LED_RED);

	GPIO_setOutputLowOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);
	GPIO_setOutputLowOnPin(GPIO_PORT_LED_RED, GPIO_PIN_LED_RED);

	// activity indicator pin
	GPIO_setAsOutputPin(GPIO_PORT_CAPUTRE_INDICATOR,
	GPIO_PIN_CAPUTRE_INDICATOR);
	GPIO_setOutputLowOnPin(GPIO_PORT_CAPUTRE_INDICATOR,
	GPIO_PIN_CAPUTRE_INDICATOR);

	// configure special function multiplexter
//	GPIO_setAsPeripheralModuleFunctionOutputPin(GPIO_PORT_P1, GPIO_PIN0,
//		GPIO_PRIMARY_MODULE_FUNCTION);

// configure external oscillator pin connections
// 1) RTC crystal connections: TODO

// unlock pins
	PMM_unlockLPM5();

	// configure interrupts

//	// configure button S1 with interrupt
//	GPIO_interruptEdgeSelect(GPIO_PORT_P1, GPIO_PIN1,
//			GPIO_LOW_TO_HIGH_TRANSITION);
//
//	GPIO_clearInterruptFlag(GPIO_PORT_P1, GPIO_PIN1);
//	GPIO_enableInterrupt(GPIO_PORT_P1, GPIO_PIN1);

}

/**
 * Reset all GPIO pins to output low for power saving reasons
 */
void GPIO_reset(void) {
	// port PA (P1 & P2)
	GPIO_setAsOutputPin(GPIO_PORT_PA,
			GPIO_PIN0 | GPIO_PIN1 | GPIO_PIN2 | GPIO_PIN3 | GPIO_PIN4
					| GPIO_PIN5 | GPIO_PIN6 | GPIO_PIN7 | GPIO_PIN8 | GPIO_PIN9
					| GPIO_PIN10 | GPIO_PIN11 | GPIO_PIN12 | GPIO_PIN13
					| GPIO_PIN14 | GPIO_PIN15);

//	GPIO_setOutputLowOnPin(GPIO_PORT_PA,
//			GPIO_PIN0 | GPIO_PIN1 | GPIO_PIN2 | GPIO_PIN3 | GPIO_PIN4
//					| GPIO_PIN5 | GPIO_PIN6 | GPIO_PIN7 | GPIO_PIN8 | GPIO_PIN9
//					| GPIO_PIN10 | GPIO_PIN11 | GPIO_PIN12 | GPIO_PIN13
//					| GPIO_PIN14 | GPIO_PIN15);

	// port PB (P3 & P4)
	GPIO_setAsOutputPin(GPIO_PORT_PB,
			GPIO_PIN0 | GPIO_PIN1 | GPIO_PIN2 | GPIO_PIN3 | GPIO_PIN4
					| GPIO_PIN5 | GPIO_PIN6 | GPIO_PIN7 | GPIO_PIN8 | GPIO_PIN9
					| GPIO_PIN10 | GPIO_PIN11 | GPIO_PIN12 | GPIO_PIN13
					| GPIO_PIN14 | GPIO_PIN15);

//	GPIO_setOutputLowOnPin(GPIO_PORT_PB,
//			GPIO_PIN0 | GPIO_PIN1 | GPIO_PIN2 | GPIO_PIN3 | GPIO_PIN4
//					| GPIO_PIN5 | GPIO_PIN6 | GPIO_PIN7 | GPIO_PIN8 | GPIO_PIN9
//					| GPIO_PIN10 | GPIO_PIN11 | GPIO_PIN12 | GPIO_PIN13
//					| GPIO_PIN14 | GPIO_PIN15);

	// port PJ
	GPIO_setAsOutputPin(GPIO_PORT_PJ,
			GPIO_PIN0 | GPIO_PIN1 | GPIO_PIN2 | GPIO_PIN3 | GPIO_PIN4
					| GPIO_PIN5 | GPIO_PIN6 | GPIO_PIN7 | GPIO_PIN8 | GPIO_PIN9
					| GPIO_PIN10 | GPIO_PIN11 | GPIO_PIN12 | GPIO_PIN13
					| GPIO_PIN14 | GPIO_PIN15);

}

/**
 * GPIO port 1 interrupt service routine.
 */
#pragma vector=PORT1_VECTOR
__interrupt void GPIO_ISR_1(void) {
	// switch to pin generating Interrupt
	switch (__even_in_range(P1IV, 10)) {
	case 0x00: // none
		break;
	case 0x02: // Pin 0
		break;
	case 0x04: // Pin 1
		break;
	case 0x06: // Pin 2
		break;
	case 0x08: // Pin 3
		break;
	case 0x0A: // Pin 4
		break;
	case 0x0C: // Pin 5
		break;
	case 0x0E: // Pin 6
		break;
	case 0x10: // Pin 7
		break;
	default:
		_never_executed();
	}
}
