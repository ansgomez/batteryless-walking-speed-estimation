#ifndef MSP432_FRAM_SD_TEST_ADC_H_
#define MSP432_FRAM_SD_TEST_ADC_H_

#include <stdint.h>

void ADC_init(void);

void ADC_clearGlobalInterrupts(void);
void ADC_clearInterruptVector(void);
void ADC_clearMemoryInterrupt(uint16_t);

uint16_t ADC_measure(uint32_t);
void ADC_start(uint8_t);
void ADC_startRepeated(uint8_t);
void ADC_stop(void);

void ADC_turnReferenceOn(void);
void ADC_turnReferenceOff(void);

//void ADC_ISR(void);

#endif /* MSP432_FRAM_SD_TEST_ADC_H_ */
