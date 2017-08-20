#include "driverlib.h"

#include "emu.h"

/**
 * Initialize the SPI peripheral and its GPIOs that is used to define the EMU configuration.
 */
void EMU_init(void) {
	GPIO_setAsOutputPin(EMU_VOLTAGE_SELECT1_PORT, EMU_VOLTAGE_SELECT1_PIN);
	GPIO_setAsOutputPin(EMU_VOLTAGE_SELECT2_PORT, EMU_VOLTAGE_SELECT2_PIN);
	GPIO_setAsOutputPin(EMU_VOLTAGE_SELECT3_PORT, EMU_VOLTAGE_SELECT3_PIN);
	GPIO_setAsOutputPin(EMU_VOLTAGE_SELECT4_PORT, EMU_VOLTAGE_SELECT4_PIN);

	GPIO_setAsOutputPin(EMU_BURST_SELECT1_PORT, EMU_BURST_SELECT1_PORT);
	GPIO_setAsOutputPin(EMU_BURST_SELECT2_PORT, EMU_BURST_SELECT2_PORT);
}

/**
 * Configere a new burst size.
 * @param voltage The burst voltage
 * @param energy The size of the energy burst
 */
void EMU_configure(uint8_t voltage, uint8_t energy) {
	// set output voltage GPIOs each one
	if (voltage & 0x01) {
		GPIO_setOutputHighOnPin(EMU_VOLTAGE_SELECT1_PORT,
				EMU_VOLTAGE_SELECT1_PIN);
	} else {
		GPIO_setOutputLowOnPin(EMU_VOLTAGE_SELECT1_PORT,
				EMU_VOLTAGE_SELECT1_PIN);
	}
	if (voltage & 0x02) {
		GPIO_setOutputHighOnPin(EMU_VOLTAGE_SELECT2_PORT,
				EMU_VOLTAGE_SELECT2_PIN);
	} else {
		GPIO_setOutputLowOnPin(EMU_VOLTAGE_SELECT2_PORT,
				EMU_VOLTAGE_SELECT2_PIN);
	}
	if (voltage & 0x04) {
		GPIO_setOutputHighOnPin(EMU_VOLTAGE_SELECT3_PORT,
		EMU_VOLTAGE_SELECT3_PIN);
	} else {
		GPIO_setOutputLowOnPin(EMU_VOLTAGE_SELECT3_PORT,
		EMU_VOLTAGE_SELECT3_PIN);
	}
	if (voltage & 0x08) {
		GPIO_setOutputHighOnPin(EMU_VOLTAGE_SELECT4_PORT,
		EMU_VOLTAGE_SELECT4_PIN);
	} else {
		GPIO_setOutputLowOnPin(EMU_VOLTAGE_SELECT4_PORT,
		EMU_VOLTAGE_SELECT4_PIN);
	}

	// set output energy GPIOs
	if (energy & 0x01) {
		GPIO_setOutputHighOnPin(EMU_BURST_SELECT1_PORT, EMU_BURST_SELECT1_PIN);
	} else {
		GPIO_setOutputLowOnPin(EMU_BURST_SELECT1_PORT, EMU_BURST_SELECT1_PIN);
	}
	if (energy & 0x02) {
		GPIO_setOutputHighOnPin(EMU_BURST_SELECT2_PORT, EMU_BURST_SELECT2_PIN);
	} else {
		GPIO_setOutputLowOnPin(EMU_BURST_SELECT2_PORT, EMU_BURST_SELECT2_PIN);
	}
}
