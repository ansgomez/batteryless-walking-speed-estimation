#include "driverlib.h"

#include "watchdog.h"

/**
 * Initialize the watchdog timer
 */
void Watchdog_init(void) {
	WDTCTL = WDTPW | WDTTMSEL | WDTSSEL__VLO | WDTIS__2G; // VLOCLK, 1s interrupts

	//	// init watchdog timer with huge time out ~1 day
//	WDT_A_intervalTimerInit(WDT_A_BASE, WDT_A_CLOCKSOURCE_VLOCLK, WDT_A_CLOCKDIVIDER_2G);
//
//	// start watchdog to clear hold
//	WDT_A_start(WDT_A_BASE);
}
