#ifndef TIMER_H_
#define TIMER_H_

void TimerA3_init(uint16_t);
void TimerA3_start(void);
void TimerA3_stop(void);

void TimerA3_ISR(void);
void TimerA3_CCR0_ISR(void);

#endif /* TIMER_H_ */
