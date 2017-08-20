#ifndef EMU_H_
#define EMU_H_

#include <stdint.h>

// ***** IO Pin Definitions ***** //
#define EMU_VOLTAGE_SELECT1_PORT		GPIO_PORT_P5
#define EMU_VOLTAGE_SELECT1_PIN		GPIO_PIN0
#define EMU_VOLTAGE_SELECT2_PORT		GPIO_PORT_P5
#define EMU_VOLTAGE_SELECT2_PIN		GPIO_PIN1
#define EMU_VOLTAGE_SELECT3_PORT		GPIO_PORT_P5
#define EMU_VOLTAGE_SELECT3_PIN		GPIO_PIN2
#define EMU_VOLTAGE_SELECT4_PORT		GPIO_PORT_P5
#define EMU_VOLTAGE_SELECT4_PIN		GPIO_PIN3

#define EMU_BURST_SELECT1_PORT		GPIO_PORT_P5
#define EMU_BURST_SELECT1_PIN		GPIO_PIN4
#define EMU_BURST_SELECT2_PORT		GPIO_PORT_P5
#define EMU_BURST_SELECT2_PIN		GPIO_PIN5

// ***** EMU Request Definitions ***** //
#define EMU_VOLTAGE_1_8V			0x00
#define EMU_VOLTAGE_1_9V			0x01
#define EMU_VOLTAGE_2_0V			0x02
#define EMU_VOLTAGE_2_1V			0x03
#define EMU_VOLTAGE_2_2V			0x04
#define EMU_VOLTAGE_2_3V			0x05
#define EMU_VOLTAGE_2_4V			0x06
#define EMU_VOLTAGE_2_5V			0x07
#define EMU_VOLTAGE_2_6V			0x08
#define EMU_VOLTAGE_2_7V			0x09
#define EMU_VOLTAGE_2_8V			0x0A
#define EMU_VOLTAGE_2_9V			0x0B
#define EMU_VOLTAGE_3_0V			0x0C
#define EMU_VOLTAGE_3_1V			0x0D
#define EMU_VOLTAGE_3_2V			0x0E
#define EMU_VOLTAGE_3_3V			0x0F

#define EMU_BURST1					0x00
#define EMU_BURST2					0x01
#define EMU_BURST3					0x02
#define EMU_BURST4					0x03

void EMU_init(void);
void EMU_configure(uint8_t, uint8_t);

#endif /* EMU_H_ */

