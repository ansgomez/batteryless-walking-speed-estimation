/*
 * image_processing.c
 *
 *  Created on: 26.04.2016
 *      Author: thomas
 */

/* Standard Includes */
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include <image_processing.h>

/*
 * estimates the displacement between image_a and image_b
 */
void block_matching( uint8_t* image_a, uint8_t* image_b, uint8_t* dx, uint8_t* dy ) {
	uint8_t i_block_x = 0;		// block index in x-direction
	uint8_t i_block_y = 0;		// block index in y-direction
	uint8_t p_I1start_x = 0;		// index start number of considered block in Image 1 in x-direction
	uint8_t p_I1start_y = 0;		// index start number of considered block in Image 1 in y-direction
	uint8_t p_I2start_x = 0;		// index start number of considered block in Image 2 in x-direction
	uint8_t p_I2start_y = 0;		// index start number of considered block in Image 2 in y-direction
	int8_t i_search_x = 0;		// index for current displacement within search area in x-direction
	int8_t i_search_y = 0;		// index for current displacement within search area in y-direction
	uint8_t i_x = 0;				// index of pixel within block in x-direction
	uint8_t i_y = 0;				// index of pixel within block in y-direction
	uint8_t p_I1_x = 0;			// index of pixel in image 1 in x-direction
	uint8_t p_I1_y = 0;			// index of pixel in image 1 in y-direction
	uint8_t p_I2_x = 0;			// index of pixel in image 2 in x-direction
	uint8_t p_I2_y = 0;			// index of pixel in image 2 in y-direction

	int8_t temp = 0;				// temporary signed number
	uint16_t cost = 0;			// cost number
	uint16_t mincost = 65535;		// store minimal cost number (initialization: set to max)

	// Iterate over all blocks in x-direction
	for ( i_block_x = 0; i_block_x < NUMBLOCKS_X; i_block_x++ ) {

		// Iterate over all blocks in y-direction
		for ( i_block_y = 0; i_block_y < NUMBLOCKS_Y; i_block_y++ ) {

			// Index start number of considered block in Image 1
			p_I1start_x = ((i_block_x+1) * BLOCKSIZE_X - BLOCKSIZE_X_HALF)-1;
			p_I1start_y = ((i_block_y+1) * BLOCKSIZE_Y - BLOCKSIZE_Y_HALF)-1;

			mincost = 65535;

			// Iterate over all possible displacements within search area in x-direction
			for ( i_search_x = SEARCHAREA_X_NEG; i_search_x <= SEARCHAREA_X_POS; i_search_x++ ) {

				// Iterate over all possible displacements within search area in y-direction
				for ( i_search_y = SEARCHAREA_Y_NEG; i_search_y <= SEARCHAREA_Y_POS; i_search_y++ ) {

					// for each possible displacement within searcharea: calculate cost function

					// Index start number of considered block in Image 2
					p_I2start_x = p_I1start_x + i_search_x;
					p_I2start_y = p_I1start_y + i_search_y;

					// Calculate Cost function
					cost = 0;
					for ( i_x = 0; i_x < BLOCKSIZE_X; i_x++ ) {
						for ( i_y = 0; i_y < BLOCKSIZE_Y; i_y++ ) {

							p_I1_x = p_I1start_x + i_x;
							p_I1_y = p_I1start_y + i_y;
							p_I2_x = p_I2start_x + i_x;
							p_I2_y = p_I2start_y + i_y;

							// Do not exceed image dimensions!
							if ( p_I1_x >= NUMPIXELS_X ) p_I1_x = 0;
							if ( p_I1_y >= NUMPIXELS_Y ) p_I1_y = 0;
							if ( p_I2_x >= NUMPIXELS_X ) p_I2_x = 0;
							if ( p_I2_y >= NUMPIXELS_Y ) p_I2_y = 0;

							// Sum of Absolute Differences (SAD)
							temp = ((image_a[(p_I1_x*NUMPIXELS_Y) + p_I1_y] - image_b[(p_I2_x*NUMPIXELS_Y) + p_I2_y]));
							if ( temp < 0 ) {
								cost = cost - temp;
							} else {
								cost = cost + temp;
							}
						}
					}

					if ( cost < mincost ) {
						mincost = cost;
						dx[(i_block_x*NUMBLOCKS_Y) + i_block_y] = i_search_x;
						dy[(i_block_x*NUMBLOCKS_Y) + i_block_y] = i_search_y;
					}
				}
			}
		}
	}
}
