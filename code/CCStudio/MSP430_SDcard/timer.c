#include "driverlib.h"

#include "clock.h"

/**
 * Initialize timer A3 to call interrupt once a second and toggle the LED
 * @param period The timer period in ms
 */
void TimerA3_init(uint16_t period) {
	// configure timer mode
	Timer_A_initUpModeParam param;
	param.clockSource = TIMER_A_CLOCKSOURCE_ACLK;
	param.clockSourceDivider = TIMER_A_CLOCKSOURCE_DIVIDER_10;
	param.timerPeriod = period;
	param.timerInterruptEnable_TAIE = TIMER_A_TAIE_INTERRUPT_ENABLE;
	param.captureCompareInterruptEnable_CCR0_CCIE =
	TIMER_A_CCIE_CCR0_INTERRUPT_DISABLE;
	param.timerClear = TIMER_A_DO_CLEAR;
	param.startTimer = false;
	Timer_A_initUpMode(TIMER_A3_BASE, &param);

	// Init timer interrupt and clear interrupts
	Timer_A_clearTimerInterruptFlag(TIMER_A3_BASE);
	Timer_A_enableInterrupt(TIMER_A3_BASE);

	// start timer
	Timer_A_startCounter(TIMER_A3_BASE, TIMER_A_UP_MODE);
}

/**
 * Start the timer A3.
 */
void TimerA3_start(void) {
	Timer_A_startCounter(TIMER_A3_BASE, TIMER_A_UP_MODE);
}

/**
 * Stop the timer A3.
 */
void TimerA3_stop(void) {
	Timer_A_stop(TIMER_A3_BASE);
}

/**
 * Timer 3 general interrupt service routine (CCR1/2, TA3IV)
 */
#pragma vector=TIMER3_A1_VECTOR
__interrupt void TimerA3_ISR(void) {
	Timer_A_clearTimerInterruptFlag(TIMER_A3_BASE);
	_low_power_mode_off_on_exit();
}

/**
 * Timer 3 CCR0 interrupt service routine
 */
#pragma vector=TIMER2_A0_VECTOR
__interrupt void TimerA3_CC0_ISR(void) {
	Timer_A_clearCaptureCompareInterruptFlag(TIMER_A3_BASE,
	TIMER_A_CAPTURECOMPARE_REGISTER_0);
	_low_power_mode_off_on_exit();
}
