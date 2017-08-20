#include <stdint.h>

#include "driverlib.h"

#include "camera.h"
#include "dma.h"

///**
// * Initialize DMA peripheral.
// */
//void DMA_init(void) {
//
//}

/**
 * DMA interrupt service routine.
 */
#pragma vector=DMA_VECTOR
__interrupt void DMA_ISR(void) {
	bool wakeup;
	// check interrupt for which channel
	switch (__even_in_range(DMAIV, DMAIV_DMA2IFG)) {
	case 0x00:	// None
		break;
	case DMAIV_DMA0IFG:	// CHANNEL 0
		break;
	case DMAIV_DMA1IFG:	// CHANNEL 1
		wakeup = Camera_DMA_ISR();

		// exit low power on wakeup signal
		if (wakeup) {
			_bic_SR_register_on_exit(LPM0_bits);
		}
		break;
	case DMAIV_DMA2IFG:	// CHANNEL 2
		break;
	default:
		_never_executed();
	}
}
