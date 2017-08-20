/*
 * clock.c
 *
 *  Created on: 04.07.2016
 *      Author: thomas
 */

#include <stdint.h>

#include "driverlib.h"


/**
 * Initialize the system
 *
 * @param  desired_clock
 * @param  regulator		use LDO (0) or DC-DC (1) power regulator mode
 * @return none
 *
 * @brief  Change the clock frequency of the microcontroller system.
 *
 * Performs the following initialization steps:
 *     4. Sets up power regulator and VCORE
 *     5. Enable Flash wait states if needed
 *     6. Change MCLK to desired frequency
 *     7. Enable Flash read buffering
 */
void ChangeClock(uint32_t desired_clock, bool regulator)
{
    if (desired_clock == 1500000) {     // 1.5 MHz
		// Switches to VCORE to LDO VCORE0
		while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
		PCM->CTL0 = PCM_CTL0_KEY_VAL | PCM_CTL0_AMR_0;
		while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));

		// Switches LDO VCORE0 to DCDC VCORE0 if requested
		if (regulator) {
			while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
			PCM->CTL0 = PCM_CTL0_KEY_VAL | PCM_CTL0_AMR_4;
			while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
    		}

		// No flash wait states necessary
		FLCTL->BANK0_RDCTL &= ~FLCTL_BANK0_RDCTL_WAIT_MASK | FLCTL_BANK0_RDCTL_WAIT_0;
		FLCTL->BANK1_RDCTL &= ~FLCTL_BANK0_RDCTL_WAIT_MASK | FLCTL_BANK0_RDCTL_WAIT_0;

		// DCO = 1.5 MHz; MCLK = source
		CS->KEY = CS_KEY_VAL;                                 // Unlock CS module for register access
		CS->CTL0 = CS_CTL0_DCORSEL_0;                                // Set DCO to 1.5MHz
		CS->CTL1 &= ~(CS_CTL1_SELM_MASK | CS_CTL1_DIVM_MASK) | CS_CTL1_SELM__DCOCLK;  // Select MCLK as DCO source
		CS->KEY = 0;

		// Set Flash Bank read buffering
		FLCTL->BANK0_RDCTL &= ~(FLCTL_BANK0_RDCTL_BUFD | FLCTL_BANK0_RDCTL_BUFI);
		FLCTL->BANK1_RDCTL &= ~(FLCTL_BANK0_RDCTL_BUFD | FLCTL_BANK0_RDCTL_BUFI);

    } else if (desired_clock == 3000000) {                                 // 3 MHz
		// Switches to VCORE to LDO VCORE0
		while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
		PCM->CTL0 = PCM_CTL0_KEY_VAL | PCM_CTL0_AMR_0;
		while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));

		// Switches LDO VCORE0 to DCDC VCORE0 if requested
    		if (regulator) {
			while(PCM->CTL1 & PCM_CTL1_PMR_BUSY);
			PCM->CTL0 = PCM_CTL0_KEY_VAL | PCM_CTL0_AMR_4;
			while(PCM->CTL1 & PCM_CTL1_PMR_BUSY);
    		}

    		// No flash wait states necessary
    		FLCTL->BANK0_RDCTL &= ~FLCTL_BANK0_RDCTL_WAIT_MASK | FLCTL_BANK0_RDCTL_WAIT_0;
    		FLCTL->BANK1_RDCTL &= ~FLCTL_BANK0_RDCTL_WAIT_MASK | FLCTL_BANK0_RDCTL_WAIT_0;

		// DCO = 3 MHz; MCLK = source
		CS->KEY = CS_KEY_VAL;                                                         // Unlock CS module for register access
		CS->CTL0 = CS_CTL0_DCORSEL_1;                                                  // Set DCO to 1.5MHz
		CS->CTL1 &= ~(CS_CTL1_SELM_MASK | CS_CTL1_DIVM_MASK) | CS_CTL1_SELM__DCOCLK;  // Select MCLK as DCO source
		CS->KEY = 0;

		// Set Flash Bank read buffering
		FLCTL->BANK0_RDCTL &= ~(FLCTL_BANK0_RDCTL_BUFD | FLCTL_BANK0_RDCTL_BUFI);
		FLCTL->BANK1_RDCTL &= ~(FLCTL_BANK0_RDCTL_BUFD | FLCTL_BANK0_RDCTL_BUFI);

    } else if (desired_clock == 12000000) {                               // 12 MHz
		// Switches to VCORE to LDO VCORE0
		while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
		PCM->CTL0 = PCM_CTL0_KEY_VAL | PCM_CTL0_AMR_0;
		while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));

		// Switches LDO VCORE0 to DCDC VCORE0 if requested
		if (regulator) {
			while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
			PCM->CTL0 = PCM_CTL0_KEY_VAL | PCM_CTL0_AMR_4;
			while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
		}

		// No flash wait states necessary
		FLCTL->BANK0_RDCTL &= ~FLCTL_BANK0_RDCTL_WAIT_MASK | FLCTL_BANK0_RDCTL_WAIT_0;
		FLCTL->BANK1_RDCTL &= ~FLCTL_BANK0_RDCTL_WAIT_MASK | FLCTL_BANK0_RDCTL_WAIT_0;

		// DCO = 12 MHz; MCLK = source
		CS->KEY = CS_KEY_VAL;                                                         // Unlock CS module for register access
		CS->CTL0 = CS_CTL0_DCORSEL_3;                                                  // Set DCO to 12MHz
		CS->CTL1 &= ~(CS_CTL1_SELM_MASK | CS_CTL1_DIVM_MASK) | CS_CTL1_SELM__DCOCLK;  // Select MCLK as DCO source
		CS->KEY = 0;

		// Set Flash Bank read buffering
		FLCTL->BANK0_RDCTL &= ~(FLCTL_BANK0_RDCTL_BUFD | FLCTL_BANK0_RDCTL_BUFI);
		FLCTL->BANK1_RDCTL &= ~(FLCTL_BANK0_RDCTL_BUFD | FLCTL_BANK0_RDCTL_BUFI);

    } else if (desired_clock == 24000000) {                               // 24 MHz
		// Switches to VCORE to LDO VCORE0
		while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
		PCM->CTL0 = PCM_CTL0_KEY_VAL | PCM_CTL0_AMR_0;
		while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));

		// Switches LDO VCORE0 to DCDC VCORE0 if requested
		if (regulator) {
			while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
			PCM->CTL0 = PCM_CTL0_KEY_VAL | PCM_CTL0_AMR_4;
			while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
		}

		// 1 flash wait state (BANK0 VCORE0 max is 12 MHz)
		FLCTL->BANK0_RDCTL &= ~FLCTL_BANK0_RDCTL_WAIT_MASK | FLCTL_BANK0_RDCTL_WAIT_2;
		FLCTL->BANK1_RDCTL &= ~FLCTL_BANK0_RDCTL_WAIT_MASK | FLCTL_BANK0_RDCTL_WAIT_2;

		// DCO = 24 MHz; MCLK = source
		CS->KEY = CS_KEY_VAL;                                                         // Unlock CS module for register access
		CS->CTL0 = CS_CTL0_DCORSEL_4;                                                  // Set DCO to 24MHz
		CS->CTL1 &= ~(CS_CTL1_SELM_MASK | CS_CTL1_DIVM_MASK) | CS_CTL1_SELM__DCOCLK;  // Select MCLK as DCO source
		CS->KEY = 0;

		// Set Flash Bank read buffering
		FLCTL->BANK0_RDCTL |= (FLCTL_BANK0_RDCTL_BUFD | FLCTL_BANK0_RDCTL_BUFI);
		FLCTL->BANK1_RDCTL &= ~(FLCTL_BANK0_RDCTL_BUFD | FLCTL_BANK0_RDCTL_BUFI);

    } else if (desired_clock == 48000000) {                               // 48 MHz
		// Switches LDO VCORE0 to LDO VCORE1; mandatory for 48 MHz setting
		while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
		PCM->CTL0 = PCM_CTL0_KEY_VAL | PCM_CTL0_AMR_1;
		while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));

		// Switches LDO VCORE1 to DCDC VCORE1 if requested
		if (regulator) {
			while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
			PCM->CTL0 = PCM_CTL0_KEY_VAL | PCM_CTL0_AMR_5;
			while((PCM->CTL1 & PCM_CTL1_PMR_BUSY));
		}

		// 2 flash wait states (BANK0 VCORE1 max is 16 MHz, BANK1 VCORE1 max is 32 MHz)
		FLCTL->BANK0_RDCTL &= ~FLCTL_BANK0_RDCTL_WAIT_MASK | FLCTL_BANK0_RDCTL_WAIT_2;
		FLCTL->BANK1_RDCTL &= ~FLCTL_BANK1_RDCTL_WAIT_MASK | FLCTL_BANK1_RDCTL_WAIT_2;

		// DCO = 48 MHz; MCLK = source
		CS->KEY = CS_KEY_VAL;                                                         // Unlock CS module for register access
		CS->CTL0 = CS_CTL0_DCORSEL_5;                                                  // Set DCO to 48MHz
		CS->CTL1 &= ~(CS_CTL1_SELM_MASK | CS_CTL1_DIVM_MASK) | CS_CTL1_SELM__DCOCLK;  // Select MCLK as DCO source
		CS->KEY = 0;

		// Set Flash Bank read buffering
		FLCTL->BANK0_RDCTL |= (FLCTL_BANK0_RDCTL_BUFD | FLCTL_BANK0_RDCTL_BUFI);
		FLCTL->BANK1_RDCTL |= (FLCTL_BANK1_RDCTL_BUFD | FLCTL_BANK1_RDCTL_BUFI);
    }

    SystemCoreClockUpdate();
}
