#ifndef CAMERA_H_
#define CAMERA_H_

#include <stdint.h>

#include "driverlib.h"

/// select if ADC samples should be read by polling (1) or interrupts (0)
#define CAMERA_POLLING  0

/// select if images should be processed with mask during acquisition (1) or not (0)
#define CAMERA_MASK_PROCESSING  0


// ***** Defines ***** //
#define CAMERA_PORT_RESP						GPIO_PORT_P2
#define CAMERA_PIN_RESP						GPIO_PIN5
#define CAMERA_PORT_INCP						GPIO_PORT_P10
#define CAMERA_PIN_INCP						GPIO_PIN5
#define CAMERA_PORT_RESV						GPIO_PORT_P8
#define CAMERA_PIN_RESV						GPIO_PIN2
#define CAMERA_PORT_INCV						GPIO_PORT_P7
#define CAMERA_PIN_INCV						GPIO_PIN6
#define CAMERA_PORT_INPHI					GPIO_PORT_P6
#define CAMERA_PIN_INPHI						GPIO_PIN1

#define CAMERA_PORT_ANALOG					GPIO_PORT_P4
#define CAMERA_PIN_ANALOG					GPIO_PIN2

// debugging output of adc trigger signal
#define CAMERA_PORT_ADCTRIGGER				GPIO_PORT_P7
#define CAMERA_PIN_ADCTRIGGER				GPIO_PIN7

#define CAMERA_PORT_SELECT					GPIO_PORT_P4
#define CAMERA_PIN_SELECT					GPIO_PIN1

#define CAMERA_PORT_POWER					GPIO_PORT_P4
#define CAMERA_PIN_POWER						GPIO_PIN0

#define CAMERA_ENABLE_LOW					0

#define CAMERA_REG_COLSEL					0x00
#define CAMERA_REG_ROWSEL					0x01
#define CAMERA_REG_VSW						0x02
#define CAMERA_REG_HSW						0x03
#define CAMERA_REG_VREF						0x04
#define CAMERA_REG_CONFIG					0x05
#define CAMERA_REG_NBIAS						0x06
#define CAMERA_REG_AOBIAS					0x07

#define CAMERA_REG_CONFIG_AMP				0x08
#define CAMERA_REG_CONFIG_ON					0x10
#define CAMERA_REG_CONFIG_OFF				0x20

/* Camera analog input definitions */
#define CAMERA_ANALOG_MEMORY						ADC_MEM11
#define CAMERA_ADC_SAMPLING_TIMER_CYCLES			4			// ADC14_CTL0_SHT1_0 | ADC14_CTL0_SHT0_0

#define CAMERA_ADC_START_DELAY_TIMER_CYCLES		0

#define CAMERA_ADC_SYNC_TIMER_CYCLES		(1 + 0)

/// conversion-time (8 bit) = 10
/// conversion-time (10 bit) = 12
/// conversion-time (12 bit) = 15
/// conversion-time (14 bit) = 17
#define CAMERA_ADC_CONVERSION_TIMER_CYCLES	12

/// The image size in column direction
#define CAMERA_IMAGE_SIZE_COL 112

/// The image size in row direction
#define CAMERA_IMAGE_SIZE_ROW 112

// *** PWM based acquisition definitions, check the corresponding timing sheet *** //

/// The camera pulse should have a delay of a few hundred nanoseconds [value in timer clock cycles]
#define CAMERA_PULSE_TIMER_CYCLES 1

/// The ADC processing duration (sample+sync+conversion), to calculate from ADC configuration [value in ADC clock cycles]
#define CAMERA_ADC_TIMER_CYCLES (CAMERA_ADC_SAMPLING_TIMER_CYCLES + CAMERA_ADC_SYNC_TIMER_CYCLES + CAMERA_ADC_CONVERSION_TIMER_CYCLES)
#define CAMERA_PIXEL_TIMER_CYCLES (CAMERA_ADC_TIMER_CYCLES)

/// The timer reset value of the row timer, aka the row read duration [value in microseconds]
#define CAMERA_ROW_TIMER_CYCLES (CAMERA_IMAGE_SIZE_ROW * CAMERA_PIXEL_TIMER_CYCLES)

/**
 * The timer counter offset between sequential timer resets [value in timer clock cycles]
 * Do not touch until you know what your doing! Verify pulse generation with oscilloscope!
 */

/* For 48MHz, 10bit, CLOCK / 6
#define CAMERA_TIMER_RESET_SINGLE_OFFSET_TIMER_CYCLES 1
#define CAMERA_TIMER_RESET_DOUBLE_OFFSET_TIMER_CYCLES 2
#define CAMERA_TIMER_CLOCK_DIV  	TIMER_A_CLOCKSOURCE_DIVIDER_6
#define CAMERA_ADC_CLOCK_DIV  	ADC_DIVIDER_6
*/

/* For 24MHz, 10bit */
#define CAMERA_TIMER_RESET_SINGLE_OFFSET_TIMER_CYCLES 2
#define CAMERA_TIMER_RESET_DOUBLE_OFFSET_TIMER_CYCLES 5
#define CAMERA_TIMER_CLOCK_DIV  	TIMER_A_CLOCKSOURCE_DIVIDER_3
#define CAMERA_ADC_CLOCK_DIV  	ADC_DIVIDER_3


/* For 24 MHz, 10bit
#define CAMERA_TIMER_RESET_SINGLE_OFFSET_TIMER_CYCLES 1
#define CAMERA_TIMER_RESET_DOUBLE_OFFSET_TIMER_CYCLES 4
#define CAMERA_TIMER_CLOCK_DIV  	TIMER_A_CLOCKSOURCE_DIVIDER_4
#define CAMERA_ADC_CLOCK_DIV  	ADC_DIVIDER_4
*/

/* For 24 MHz, 16bit
#define CAMERA_TIMER_RESET_SINGLE_OFFSET_TIMER_CYCLES 2
#define CAMERA_TIMER_RESET_DOUBLE_OFFSET_TIMER_CYCLES 5
#define CAMERA_TIMER_CLOCK_DIV  	TIMER_A_CLOCKSOURCE_DIVIDER_4
#define CAMERA_ADC_CLOCK_DIV  	ADC_DIVIDER_4
*/

/* For 24 MHz, 16bit
#define CAMERA_TIMER_RESET_SINGLE_OFFSET_TIMER_CYCLES 1
#define CAMERA_TIMER_RESET_DOUBLE_OFFSET_TIMER_CYCLES 3
#define CAMERA_TIMER_CLOCK_DIV  	TIMER_A_CLOCKSOURCE_DIVIDER_6
#define CAMERA_ADC_CLOCK_DIV  	ADC_DIVIDER_6
*/

/* For 24 MHz, 16bit
#define CAMERA_TIMER_RESET_SINGLE_OFFSET_TIMER_CYCLES 1
#define CAMERA_TIMER_RESET_DOUBLE_OFFSET_TIMER_CYCLES 3
#define CAMERA_TIMER_CLOCK_DIV  	TIMER_A_CLOCKSOURCE_DIVIDER_5
#define CAMERA_ADC_CLOCK_DIV  	ADC_DIVIDER_5
*/

/* FOR 12 MHz, 16bit
 * #define CAMERA_TIMER_RESET_SINGLE_OFFSET_TIMER_CYCLES 0
#define CAMERA_TIMER_RESET_DOUBLE_OFFSET_TIMER_CYCLES 0
#define CAMERA_TIMER_CLOCK_DIV  	TIMER_A_CLOCKSOURCE_DIVIDER_16
#define CAMERA_ADC_CLOCK_PDIV  	ADC_PREDIVIDER_4
 *
 */



/// The camera base pulse delay after ADC sampling [value in timer clock cycles]
#define CAMERA_PULSE_START_DELAY_TIMER_CYCLES   CAMERA_TIMER_RESET_SINGLE_OFFSET_TIMER_CYCLES

/// The camera pulse start offset [value in timer clock cycles]
#define CAMERA_PULSE_OFFSET_TIMER_CYCLES (CAMERA_ADC_SAMPLING_TIMER_CYCLES + CAMERA_ADC_SYNC_TIMER_CYCLES + CAMERA_PULSE_START_DELAY_TIMER_CYCLES)

/// The camera RESP pulse offset [value in timer clock cycles]
#define CAMERA_RESP_OFFSET_TIMER_CYCLES (CAMERA_PULSE_OFFSET_TIMER_CYCLES + 3)

/// The camera INCP pulse offset [value in timer clock cycles]
#define CAMERA_INCP_OFFSET_TIMER_CYCLES (CAMERA_PULSE_OFFSET_TIMER_CYCLES + 1)

/// The camera RESV pulse offset [value in timer clock cycles]
#define CAMERA_RESV_OFFSET_TIMER_CYCLES (CAMERA_PULSE_OFFSET_TIMER_CYCLES + 0)

/// The camera INCV pulse offset [value in timer clock cycles]
#define CAMERA_INCV_OFFSET_TIMER_CYCLES (CAMERA_PULSE_OFFSET_TIMER_CYCLES + 2)

/// The timer reset value for TA0 [timer count value]
#define CAMERA_TA0_RESET_VALUE ((CAMERA_PIXEL_TIMER_CYCLES - 1) - CAMERA_RESP_OFFSET_TIMER_CYCLES)

/// The timer reset value for TA1 [timer count value]
#define CAMERA_TA1_RESET_VALUE ((CAMERA_PIXEL_TIMER_CYCLES - 1) - CAMERA_INCV_OFFSET_TIMER_CYCLES)

/// The timer reset value for TA3 [timer count value]
#define CAMERA_TA3_RESET_VALUE ((CAMERA_PIXEL_TIMER_CYCLES - 1) - CAMERA_INCP_OFFSET_TIMER_CYCLES)

// *** software based acquisition definitions *** //

/// The camera pulse should have a delay of a few hundred nanoseconds
#define CAMERA_PULSE_DELAY_CYCLES 2

/// The camera amplifier activation delay of about a microseconds
#define CAMERA_AMPLIFY_DELAY_CYCLES 10

/// The camera analog read delay should be a couple of microseconds
#define CAMERA_ANALOG_DELAY_CYCLES 30

// ***** CAMERA CONFIGURATION ***** //

/// The column readout supply
#define CAMERA_NBIAS 50

/// The bias for output buffer amplifier
#define CAMERA_AOBIAS 50

/// The camera gain to use 1-7, 0 to bypass amplifier
#define CAMERA_GAIN 0

/// The reference voltage bias for amplifier, when used
#define CAMERA_VREF 40

void Camera_initGPIO(void);
void Camera_init(void);
void Camera_configure(uint8_t, uint8_t, uint8_t, uint8_t);

void Camera_enable(void);
void Camera_disable(void);

void Camera_connectPWM(void);
void Camera_disconnectPWM(void);

bool Camera_isBusy(void);

void Camera_pulse(uint8_t, uint16_t);
void Camera_pulseMulti(uint8_t, uint16_t, uint8_t);

void Camera_defineMask(const uint8_t*);

uint8_t Camera_readPixel(void);
void Camera_readImage(uint8_t*);

void Camera_selectRegister(uint8_t);

void Camera_startAquire(uint8_t*);
void Camera_AquireAndStore(uint32_t);

void Camera_turnPowerOn(uint8_t);
void Camera_turnPowerOff(void);

void Camera_writeRegister(uint8_t, uint8_t);

#endif /* CAMERA_H_ */
