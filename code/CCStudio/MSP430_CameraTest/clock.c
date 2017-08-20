#include "driverlib.h"

#include "clock.h"

uint32_t ACLK_Freq;
uint32_t SMCLK_Freq;
uint32_t MCLK_Freq;

/**
 * Setup all the system clocks
 */
void Clock_init(void) {

	// set external clock frequencies
	CS_setExternalClockSource(LF_CRYSTAL_FREQ_HZ, HF_CRYSTAL_FREQ_HZ);

	// get default clocks
	ACLK_Freq = CS_getACLK();
	SMCLK_Freq = CS_getSMCLK();
	MCLK_Freq = CS_getMCLK();

#if CLOCK_SPEED_SETTINGS == 10
	// *** 10 / 5 MHz clock configuration *** //
	// configure DCO clock to 20MHz
	CS_setDCOFreq(CS_DCORSEL_1, CS_DCOFSEL_5);

	// setup master clock (CPU clock) of 10.5MHz
	CS_clockSignalInit(CS_MCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_2);

	// setup sub system master clock (high speed peripheral) of 5.25MHz
	CS_clockSignalInit(CS_SMCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_4);

#elif CLOCK_SPEED_SETTINGS == 8
	// *** 8 / 4 MHz clock configuration *** //
	// configure DCO clock to 8MHz
	CS_setDCOFreq(CS_DCORSEL_0, CS_DCOFSEL_6);

	// setup master clock (CPU clock) of 8MHz
	CS_clockSignalInit(CS_MCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_1);

	// setup sub system master clock (high speed peripheral) of 4MHz
	CS_clockSignalInit(CS_SMCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_2);

#elif CLOCK_SPEED_SETTINGS == 6
	// *** 6 / 3 MHz clock configuration *** //
	// configure DCO clock to 24MHz
	CS_setDCOFreq(CS_DCORSEL_1, CS_DCOFSEL_6);

	// setup master clock (CPU clock) of 6MHz
	CS_clockSignalInit(CS_MCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_4);

	// setup sub system master clock (high speed peripheral) of 3MHz
	CS_clockSignalInit(CS_SMCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_8);

#elif CLOCK_SPEED_SETTINGS == 4
	// *** 4 / 2 MHz clock configuration *** //
	// configure DCO clock to 4MHz
	CS_setDCOFreq(CS_DCORSEL_0, CS_DCOFSEL_3);

	// setup master clock (CPU clock) of 4MHz
	CS_clockSignalInit(CS_MCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_1);

	// setup sub system master clock (high speed peripheral) of 2MHz
	CS_clockSignalInit(CS_SMCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_2);
#else
	// *** 5.33 MHz clock configuration *** //
	// configure DCO clock to 5.33MHz
	CS_setDCOFreq(CS_DCORSEL_0, CS_DCOFSEL_4);

	// setup master clock (CPU clock) of 5.33MHz
	CS_clockSignalInit(CS_MCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_1);

	// setup sub system master clock (high speed peripheral) of 5.33MHz
	CS_clockSignalInit(CS_SMCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_1);

#endif

	// setup auxiliary clock (low speed peripheral)
	CS_clockSignalInit(CS_ACLK, CS_VLOCLK_SELECT, CS_CLOCK_DIVIDER_1);

	// disable unused clock sources
	CS_HFXTOff();
	CS_LFXTOff();

	// disable clock requests for MCLK and SMCLK
//	CS_disableClockRequest(CS_MCLK);
//	CS_disableClockRequest(CS_SMCLK);

	// get new clock values
	ACLK_Freq = CS_getACLK();
	SMCLK_Freq = CS_getSMCLK();
	MCLK_Freq = CS_getMCLK();
}

///**
// * Switch to lower power clock sources for master and submaster to turn off DCO
// */
//void Clock_switchLowPower(void) {
//	CS_clockSignalInit(CS_MCLK, CS_VLOCLK_SELECT, CS_CLOCK_DIVIDER_1);
//	CS_clockSignalInit(CS_SMCLK, CS_VLOCLK_SELECT, CS_CLOCK_DIVIDER_1);
//}
//
///**
// * Switch nominal clock sources for master and submaster using DCO
// */
//void Clock_switchNormalPower(void) {
//#if CLOCK_SPEED_SETTINGS == 10
//	// *** 10 / 5 MHz clock configuration *** //
//
//	CS_clockSignalInit(CS_MCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_2);
//	CS_clockSignalInit(CS_SMCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_4);
//
//#elif CLOCK_SPEED_SETTINGS == 8
//	// *** 8 / 4 MHz clock configuration *** //
//
//	CS_clockSignalInit(CS_MCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_1);
//	CS_clockSignalInit(CS_SMCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_2);
//
//#elif CLOCK_SPEED_SETTINGS == 6
//	// *** 6 / 3 MHz clock configuration *** //
//
//	CS_clockSignalInit(CS_MCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_4);
//	CS_clockSignalInit(CS_SMCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_8);
//
//#elif CLOCK_SPEED_SETTINGS == 4
//	// *** 4 / 2 MHz clock configuration *** //
//
//	CS_clockSignalInit(CS_MCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_1);
//	CS_clockSignalInit(CS_SMCLK, CS_DCOCLK_SELECT, CS_CLOCK_DIVIDER_2);
//#endif
//}
