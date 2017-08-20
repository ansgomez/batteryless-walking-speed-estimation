#ifndef CAMERA_LEGACY1_H_
#define CAMERA_LEGACY1_H_

#include <stdint.h>

#include "driverlib.h"

// ***** Defines ***** //
#define CAMERA_PORT_RESP				GPIO_PORT_P2
#define CAMERA_PIN_RESP					GPIO_PIN2
#define CAMERA_PORT_INCP				GPIO_PORT_P1
#define CAMERA_PIN_INCP					GPIO_PIN4
#define CAMERA_PORT_RESV				GPIO_PORT_P3
#define CAMERA_PIN_RESV					GPIO_PIN4
#define CAMERA_PORT_INCV				GPIO_PORT_P1
#define CAMERA_PIN_INCV					GPIO_PIN1
#define CAMERA_PORT_INPHI				GPIO_PORT_P1
#define CAMERA_PIN_INPHI				GPIO_PIN3

#define CAMERA_PORT_ANALOG				GPIO_PORT_P4
#define CAMERA_PIN_ANALOG				GPIO_PIN3
#define CAMERA_ANALOG_CHANNEL			ADC12_B_INPUT_A11
#define CAMERA_ANALOG_MEMORY			ADC12_B_MEMORY_11
#define CAMERA_ANALOG_SAMPLING_DELAY	ADC12_B_CYCLEHOLD_4_CYCLES

#define CAMERA_PORT_SELECT				GPIO_PORT_P3
#define CAMERA_PIN_SELECT				GPIO_PIN6

/* NO SWITCH AVAILABLE, USING FREE PORT */
#define CAMERA_PORT_ENABLE				GPIO_PORT_P4
#define CAMERA_PIN_ENABLE				GPIO_PIN2

#define CAMERA_REG_COLSEL				0x00
#define CAMERA_REG_ROWSEL				0x01
#define CAMERA_REG_VSW					0x02
#define CAMERA_REG_HSW					0x03
#define CAMERA_REG_VREF					0x04
#define CAMERA_REG_CONFIG				0x05
#define CAMERA_REG_NBIAS				0x06
#define CAMERA_REG_AOBIAS				0x07

#define CAMERA_REG_CONFIG_AMP			0x08
#define CAMERA_REG_CONFIG_ON			0x10

/// The camera pulse should have a delay of a few hundred nanoseconds
#define CAMERA_PULSE_DELAY_CYCLES 2

/// The camera amplifier activation delay of about a microseconds
#define CAMERA_AMPLIFY_DELAY_CYCLES 10

/// The camera analog read delay should be a couple of microseconds
#define CAMERA_ANALOG_DELAY_CYCLES 30

// ***** CAMERA CONFIGURATION ***** //

/// The camera gain to use 1-7
#define CAMERA_GAIN 0

/// The column readout supply
#define CAMERA_NBIAS 50

/// The bias for output buffer amplifier
#define CAMERA_AOBIAS 50

/// The reference voltage bias for amplifier
#define CAMERA_VREF 40

/// The image size in column direction
#define CAMERA_IMAGE_SIZE_COL 112

/// The image size in row direction
#define CAMERA_IMAGE_SIZE_ROW 112

void Camera_init(void);
void Camera_configure(uint8_t, uint8_t, uint8_t, uint8_t);

void Camera_enable(void);
void Camera_disable(void);

void Camera_pulse(uint8_t, uint16_t);
void Camera_pulseMulti(uint8_t, uint16_t, uint8_t);

uint16_t Camera_readPixel(void);
void Camera_readImage(uint16_t*);

bool Camera_DMA_ISR(void);

void Camera_setupADC(void);

void Camera_selectRegister(uint8_t);

void Camera_writeRegister(uint8_t, uint8_t);

#endif /* CAMERA_LEGACY1_H_ */
