#ifndef CLOCK_H_
#define CLOCK_H_

// ***** External Crystal Speed Defines ***** //
#define LF_CRYSTAL_FREQ_HZ 32764
#define HF_CRYSTAL_FREQ_HZ 0

/// The clock speed settings in MHz (4, 6, 8 or 10)
#define CLOCK_SPEED_SETTINGS 10

// ***** Global Clock Variables ***** //
extern uint32_t ACLK_Freq;
extern uint32_t SMCLK_Freq;
extern uint32_t MCLK_Freq;

void Clock_init(void);
//void Clock_switchLowPower(void);
//void Clock_switchNormalPower(void);

#endif /* CLOCK_H_ */
