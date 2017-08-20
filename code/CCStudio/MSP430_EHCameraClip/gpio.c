#include "driverlib.h"

#include "gpio.h"

/**
 * Initialize all the GPIO pins
 */
void GPIO_init(void) {
	// configure button S1 input pin
	GPIO_setAsInputPinWithPullUpResistor(GPIO_PORT_START_BUTTON,
			GPIO_PIN_START_BUTTON);

	// configure both LED output pin
	GPIO_setAsOutputPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);
	GPIO_setOutputLowOnPin(GPIO_PORT_LED_GREEN, GPIO_PIN_LED_GREEN);

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

	// configure special function multiplexter

	// configure external oscillator pin connections
	// 1) RTC crystal connections: TODO

	// unlock pins
	// PMM_unlockLPM5();
	PM5CTL0 &= ~LOCKLPM5;

	// configure interrupts

	// configure LPM wakeup interrupt pin
	GPIO_setAsInputPin(GPIO_PORT_LPM_WAKEUP, GPIO_PIN_LPM_WAKEUP);
	GPIO_interruptEdgeSelect(GPIO_PORT_LPM_WAKEUP, GPIO_PIN_LPM_WAKEUP,
			GPIO_LOW_TO_HIGH_TRANSITION);
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

/**
 * GPIO port 4 interrupt service routine.
 */
#pragma vector=PORT4_VECTOR
__interrupt void GPIO_ISR_4(void) {
	// switch to pin generating Interrupt
	switch (__even_in_range(P4IV, 10)) {
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
