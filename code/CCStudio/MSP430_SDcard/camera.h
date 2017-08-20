#ifndef CAMERA_H_
#define CAMERA_H_

#include <stdint.h>

#include "driverlib.h"

// ***** Defines ***** //
#define CAMERA_PORT_RESP					GPIO_PORT_P1
#define CAMERA_PIN_RESP						GPIO_PIN1
#define CAMERA_PORT_INCP					GPIO_PORT_P1
#define CAMERA_PIN_INCP						GPIO_PIN4
#define CAMERA_PORT_RESV					GPIO_PORT_P1			// P2.2
#define CAMERA_PIN_RESV						GPIO_PIN2		// P2.2
#define CAMERA_PORT_INCV					GPIO_PORT_P1
#define CAMERA_PIN_INCV						GPIO_PIN3
//#define CAMERA_PORT_INPHI					GPIO_PORT_P1
//#define CAMERA_PIN_INPHI					GPIO_PIN6

#define CAMERA_PORT_ANALOG					GPIO_PORT_P4
#define CAMERA_PIN_ANALOG					GPIO_PIN3

// debugging output of adc trigger signal
#define CAMERA_PORT_ADCTRIGGER				GPIO_PORT_P1
#define CAMERA_PIN_ADCTRIGGER				GPIO_PIN2

#define CAMERA_PORT_SELECT					GPIO_PORT_P3
#define CAMERA_PIN_SELECT					GPIO_PIN6

/* NO SWITCH AVAILABLE, USING FREE PORT */
#define CAMERA_PORT_ENABLE					GPIO_PORT_P4
#define CAMERA_PIN_ENABLE					GPIO_PIN2

#define CAMERA_ENABLE_LOW					1

#define CAMERA_REG_COLSEL					0x00
#define CAMERA_REG_ROWSEL					0x01
#define CAMERA_REG_VSW						0x02
#define CAMERA_REG_HSW						0x03
#define CAMERA_REG_VREF						0x04
#define CAMERA_REG_CONFIG					0x05
#define CAMERA_REG_NBIAS					0x06
#define CAMERA_REG_AOBIAS					0x07

#define CAMERA_REG_CONFIG_AMP				0x08
#define CAMERA_REG_CONFIG_ON				0x10
#define CAMERA_REG_CONFIG_OFF				0x20

/* Camera analog input definitions */
#define CAMERA_ANALOG_INPUT					ADC12_B_INPUT_A11
#define CAMERA_ANALOG_MEMORY				ADC12_B_MEMORY_11
#define CAMERA_ANALOG_SAMPLING_DELAY		ADC12_B_CYCLEHOLD_4_CYCLES
#define CAMERA_ADC_SAMPLING_TIMER_CYCLES	4

#define CAMERA_ADC_START_DELAY_TIMER_CYCLES	0

#define CAMERA_ADC_SYNC_TIMER_CYCLES		(1 + 0)

/// conversion-time = resultion in bits + 2
#define CAMERA_ADC_CONVERSION_TIMER_CYCLES	14

/// The DMA channel used for the camera
#define CAMERA_DMA_CHANNEL DMA_CHANNEL_1

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

/// The camera base pulse delay after ADC sampling [value in timer clock cycles]
#define CAMERA_PULSE_START_DELAY_TIMER_CYCLES 0

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

/**
 * The timer counter offset between sequential timer resets [value in timer clock cycles]
 * Do not touch until you know what your doing! Verify pulse generation with oscilloscope!
 */
#define CAMERA_TIMER_RESET_SINGLE_OFFSET_TIMER_CYCLES 2
#define CAMERA_TIMER_RESET_DOUBLE_OFFSET_TIMER_CYCLES 4

/// The timer reset value for TA0 [timer count value]
#define CAMERA_TA0_RESET_VALUE ((CAMERA_PIXEL_TIMER_CYCLES - 1) - CAMERA_RESP_OFFSET_TIMER_CYCLES)

/// The timer reset value for TA1 [timer count value]
#define CAMERA_TA1_RESET_VALUE ((CAMERA_PIXEL_TIMER_CYCLES - 1) - CAMERA_INCV_OFFSET_TIMER_CYCLES)

/// The timer reset value for TB0 [timer count value]
#define CAMERA_TB0_RESET_VALUE ((CAMERA_PIXEL_TIMER_CYCLES - 1) - CAMERA_INCP_OFFSET_TIMER_CYCLES)

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

void Camera_init(void);
void Camera_configure(uint8_t, uint8_t, uint8_t, uint8_t);

void Camera_enable(void);
void Camera_disable(void);

bool Camera_isBusy(void);

bool Camera_DMA_ISR(void);

void Camera_pulse(uint8_t, uint16_t);
void Camera_pulseMulti(uint8_t, uint16_t, uint8_t);

uint16_t Camera_readPixel(void);
void Camera_readImage(uint16_t*);

void Camera_setupADC(void);

void Camera_selectRegister(uint8_t);

void Camera_startAquire(uint16_t*);

void Camera_turnPowerOn(uint8_t);
void Camera_turnPowerOff(void);

void Camera_writeRegister(uint8_t, uint8_t);

#endif /* CAMERA_H_ */
