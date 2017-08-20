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

#include <msp432p401r.h>

//#include <core_cm4.h>
//#include <core_cmInstr.h>
//#include <core_cmFunc.h>

#include <image_processing.h>

#include <serial.h>

/*
 * estimates the displacement between image_a and image_b
 */

#if ONE_BLOCK == 1


// one_block_matching
void block_matching( uint8_t* image_a, uint8_t* image_b, int8_t* dx, int8_t* dy ) {
	int32_t i_search_x = 0;		// index for current displacement within search area in x-direction
	int32_t i_search_y = 0;		// index for current displacement within search area in y-direction
	uint32_t i_x = 0;			// index of pixel within block in x-direction
	uint32_t i_y = 0;			// index of pixel within block in y-direction
	uint32_t p_I1 = 0;			// index of pixel in image 1
	uint32_t p_I2 = 0;			// index of pixel in image 2

	uint8_t p_I2start_x = 0;						// index start number of considered block in Image 2 in x-direction
	uint8_t p_I2start_y = 0;						// index start number of considered block in Image 2 in y-direction

	uint32_t cost = 0;							// cost number
	uint32_t mincost = UINT32_MAX;				// store minimal cost number (initialization: set to max)

	// Iterate over all possible displacements within search area in x-direction
	p_I2start_x = 0;
	for ( i_search_x = SEARCHAREA_X_NEG; i_search_x <= SEARCHAREA_X_POS; i_search_x++ ) {

		// Iterate over all possible displacements within search area in y-direction
		p_I2start_y = 0;
		for ( i_search_y = SEARCHAREA_Y_NEG; i_search_y <= SEARCHAREA_Y_POS; i_search_y++ ) {

			// for each possible displacement within searcharea: calculate cost function
			cost = 0;

            p_I1 = ((-SEARCHAREA_X_NEG) * NUMPIXELS_Y) + (-SEARCHAREA_Y_NEG);
            p_I2 = (p_I2start_x * NUMPIXELS_Y) + p_I2start_y;

			for ( i_x = 0; i_x < EFF_NUMPIXELS_X; i_x++ ) {

				for ( i_y = 0; i_y < EFF_NUMPIXELS_Y; i_y += 4 ) {
					cost = _usada8(*((uint32_t*)(&image_a[p_I1])), *((uint32_t*)(&image_b[p_I2])), cost);
					p_I1 += 4;
					p_I2 += 4;
				}
	            p_I1 += (NUMPIXELS_Y - EFF_NUMPIXELS_Y);
	            p_I2 += (NUMPIXELS_Y - EFF_NUMPIXELS_Y);
			}

			if ( cost < mincost ) {
				mincost = cost;
/*
				Serial_sendChar((char) (mincost >> 24));
				Serial_sendChar((char) (mincost >> 16));
				Serial_sendChar((char) (mincost >> 8));
				Serial_sendChar((char) (mincost));
*/
				*dx = i_search_x;
				*dy = i_search_y;
			}

			// Index start number of considered block in Image 2
			p_I2start_y++;
		}

		// Index start number of considered block in Image 2
		p_I2start_x++;
	}
}

#else

#if false
// one_block_matching
void block_matching_one_raw( uint8_t* image_a, uint8_t* image_b, uint8_t* dx, uint8_t* dy ) {
	int8_t i_search_x = 0;		// index for current displacement within search area in x-direction
	int8_t i_search_y = 0;		// index for current displacement within search area in y-direction
	uint8_t i_x = 0;				// index of pixel within block in x-direction
	uint8_t i_y = 0;				// index of pixel within block in y-direction
	uint8_t p_I1 = 0;			// index of pixel in image 1
	uint8_t p_I2 = 0;			// index of pixel in image 2

	uint8_t p_I1_x = 0;			// index of pixel in image 1 in x-direction
	uint8_t p_I1_y = 0;			// index of pixel in image 1 in y-direction
	uint8_t p_I2_x = 0;			// index of pixel in image 2 in x-direction
	uint8_t p_I2_y = 0;			// index of pixel in image 2 in y-direction

	uint8_t p_I1start_x = -SEARCHAREA_X_NEG;		// index start number of considered block in Image 1 in x-direction
	uint8_t p_I1start_y = -SEARCHAREA_Y_NEG;		// index start number of considered block in Image 1 in y-direction
	uint8_t p_I2start_x = 0;						// index start number of considered block in Image 2 in x-direction
	uint8_t p_I2start_y = 0;						// index start number of considered block in Image 2 in y-direction

	uint32_t cost = 0;							// cost number
	uint32_t mincost = UINT32_MAX;				// store minimal cost number (initialization: set to max)

	// Iterate over all possible displacements within search area in x-direction
	p_I2start_x = 0;
	for ( i_search_x = SEARCHAREA_X_NEG; i_search_x <= SEARCHAREA_X_POS; i_search_x++ ) {

		// Iterate over all possible displacements within search area in y-direction
		p_I2start_y = 0;
		for ( i_search_y = SEARCHAREA_Y_NEG; i_search_y <= SEARCHAREA_Y_POS; i_search_y++ ) {

			// for each possible displacement within searcharea: calculate cost function
			cost = 0;
			for ( i_x = 0; i_x < EFF_NUMPIXELS_X; i_x++ ) {
				for ( i_y = 0; i_y < EFF_NUMPIXELS_Y; i_y += 4 ) {

					p_I1_x = p_I1start_x + i_x;
					p_I1_y = p_I1start_y + i_y;
					p_I2_x = p_I2start_x + i_x;
					p_I2_y = p_I2start_y + i_y;

					cost = _usada8(*((uint32_t*)(&image_a[(p_I1_x*NUMPIXELS_Y) + p_I1_y])), *((uint32_t*)(&image_b[(p_I2_x*NUMPIXELS_Y) + p_I2_y])), cost);
				}
			}

			if ( cost < mincost ) {
				mincost = cost;
/*
				Serial_sendChar((char) (mincost >> 24));
				Serial_sendChar((char) (mincost >> 16));
				Serial_sendChar((char) (mincost >> 8));
				Serial_sendChar((char) (mincost));
*/
				dx[0] = i_search_x;
				dy[0] = i_search_y;
			}

			// Index start number of considered block in Image 2
			p_I2start_y++;
		}

		// Index start number of considered block in Image 2
		p_I2start_x++;
	}
}
#endif


/*
 * estimates the displacement between image_a and image_b
 * optimized
 */
void block_matching( uint8_t* image_a, uint8_t* image_b, int8_t* dx, int8_t* dy ) {
	uint8_t i_block_x = 0;		// block index in x-direction
	uint8_t i_block_y = 0;		// block index in y-direction
	int_fast8_t i_search_x = 0;		// index for current displacement within search area in x-direction
	int_fast8_t i_search_y = 0;		// index for current displacement within search area in y-direction
	uint_fast16_t i_x = 0;				// index of pixel within block in x-direction
	uint_fast16_t i_y = 0;				// index of pixel within block in y-direction
	uint_fast16_t p_I1 = 0;			// index of pixel in image 1
	uint_fast16_t p_I2 = 0;			// index of pixel in image 2

	uint_fast16_t p_I1start = (-SEARCHAREA_X_NEG)*NUMPIXELS_Y - SEARCHAREA_Y_NEG;		// index start number of considered block in Image 1
	uint_fast16_t p_I2start = 0;									// index start number of considered block in Image 2

	uint_fast16_t d_index = 0;				// index for dx and dy arrays

	uint32_t cost = 0;					// cost number
	uint32_t mincost = UINT16_MAX;		// store minimal cost number (initialization: set to max)

	// Iterate over all blocks in x-direction
	for ( i_block_x = 0; i_block_x < NUMBLOCKS_X; i_block_x++ ) {

		// Iterate over all blocks in y-direction
		for ( i_block_y = 0; i_block_y < NUMBLOCKS_Y; i_block_y++ ) {

			mincost = UINT16_MAX;

			// Iterate over all possible displacements within search area in x-direction
			p_I2start = p_I1start - (-SEARCHAREA_X_NEG*NUMPIXELS_Y) - (-SEARCHAREA_Y_NEG);
			for ( i_search_x = SEARCHAREA_X_NEG; i_search_x <= SEARCHAREA_X_POS; i_search_x++ ) {

				// Iterate over all possible displacements within search area in y-direction
				for ( i_search_y = SEARCHAREA_Y_NEG; i_search_y <= SEARCHAREA_Y_POS; i_search_y++ ) {

					// for each possible displacement within searcharea: calculate cost function
					cost = 0;

					p_I1 = p_I1start;
					p_I2 = p_I2start;

					// Calculate Cost Function for each pixel within block
					for ( i_x = 0; i_x < BLOCKSIZE_X; i_x++, p_I1 += (NUMPIXELS_Y - BLOCKSIZE_Y), p_I2 += (NUMPIXELS_Y - BLOCKSIZE_Y) ) {
						for ( i_y = 0; i_y < BLOCKSIZE_Y; i_y += 4, p_I1 += 4, p_I2 += 4 ) {

							// Sum of Absolute Differences (SAD)
							cost = _usada8(*((uint32_t*)(&image_a[p_I1])), *((uint32_t*)(&image_b[p_I2])), cost);

							//p_I1 += 4;							// next row (+4)
							//p_I2 += 4;							// next row (+4)
						}
			            //p_I1 += (NUMPIXELS_Y - BLOCKSIZE_Y);		// next column
			            //p_I2 += (NUMPIXELS_Y - BLOCKSIZE_Y);		// next column
					}

					if ( cost < mincost ) {
						mincost = cost;
						dx[d_index] = i_search_x;
						dy[d_index] = i_search_y;
					}

					// Index start number of considered block in Image 2
					p_I2start++;				//next row
				}

				// Index start number of considered block in Image 2
				p_I2start += EFF_NUMPIXELS_Y - 1; // (NUMPIXELS_Y - (SEARCHAREA_Y_POS-SEARCHAREA_Y_NEG+1));
			}

			// index start number of considered block in Image 1 in y-direction
			p_I1start += BLOCKSIZE_Y;
			d_index++;
		}

		// index start number of considered block in Image 1 in x-direction
		p_I1start += (BLOCKSIZE_X*NUMPIXELS_Y) - (EFF_NUMPIXELS_Y);
	}

}

#if false

/*
 * estimates the displacement between image_a and image_b
 * with some optimizations
 */
void block_matching( uint8_t* image_a, uint8_t* image_b, int8_t* dx, int8_t* dy ) {
	uint8_t i_block_x = 0;		// block index in x-direction
	uint8_t i_block_y = 0;		// block index in y-direction
	int8_t i_search_x = 0;		// index for current displacement within search area in x-direction
	int8_t i_search_y = 0;		// index for current displacement within search area in y-direction
	uint8_t i_x = 0;				// index of pixel within block in x-direction
	uint8_t i_y = 0;				// index of pixel within block in y-direction
	uint8_t p_I1_x = 0;			// index of pixel in image 1 in x-direction
	uint8_t p_I1_y = 0;			// index of pixel in image 1 in y-direction
	uint8_t p_I2_x = 0;			// index of pixel in image 2 in x-direction
	uint8_t p_I2_y = 0;			// index of pixel in image 2 in y-direction

	uint8_t p_I1start_x = -SEARCHAREA_X_NEG;		// index start number of considered block in Image 1 in x-direction
	uint8_t p_I1start_y = -SEARCHAREA_Y_NEG;		// index start number of considered block in Image 1 in y-direction
	uint8_t p_I2start_x = 0;						// index start number of considered block in Image 2 in x-direction
	uint8_t p_I2start_y = 0;						// index start number of considered block in Image 2 in y-direction

	uint16_t cost = 0;					// cost number
	uint16_t mincost = UINT16_MAX;		// store minimal cost number (initialization: set to max)

	// Iterate over all blocks in x-direction
	for ( i_block_x = 0; i_block_x < NUMBLOCKS_X; i_block_x++ ) {

		// index start number of considered block in Image 1 in y-direction
		p_I1start_y = -SEARCHAREA_Y_NEG;

		// Iterate over all blocks in y-direction
		for ( i_block_y = 0; i_block_y < NUMBLOCKS_Y; i_block_y++ ) {

			mincost = UINT16_MAX;

			// Iterate over all possible displacements within search area in x-direction
			p_I2start_x = p_I1start_x + SEARCHAREA_X_NEG;
			for ( i_search_x = SEARCHAREA_X_NEG; i_search_x <= SEARCHAREA_X_POS; i_search_x++ ) {

				// Iterate over all possible displacements within search area in y-direction
				p_I2start_y = p_I1start_y + SEARCHAREA_Y_NEG;
				for ( i_search_y = SEARCHAREA_Y_NEG; i_search_y <= SEARCHAREA_Y_POS; i_search_y++ ) {

					// for each possible displacement within searcharea: calculate cost function
					cost = 0;
					for ( i_x = 0; i_x < BLOCKSIZE_X; i_x++ ) {
						for ( i_y = 0; i_y < BLOCKSIZE_Y; i_y += 4 ) {

							p_I1_x = p_I1start_x + i_x;
							p_I1_y = p_I1start_y + i_y;
							p_I2_x = p_I2start_x + i_x;
							p_I2_y = p_I2start_y + i_y;

							//cost = cost + _usad8((image_a[(p_I1_x*NUMPIXELS_Y) + p_I1_y] >> 3), (image_b[(p_I2_x*NUMPIXELS_Y) + p_I2_y] >> 3));
							cost = _usada8(*((uint32_t*)(&image_a[(p_I1_x*NUMPIXELS_Y) + p_I1_y])), *((uint32_t*)(&image_b[(p_I2_x*NUMPIXELS_Y) + p_I2_y])), cost);

							// Sum of Absolute Differences (SAD)
							//cost = _usada8(image_a[(p_I1_x*NUMPIXELS_Y) + p_I1_y], image_b[(p_I2_x*NUMPIXELS_Y) + p_I2_y], cost);


//							temp = ((image_a[(p_I1_x*NUMPIXELS_Y) + p_I1_y] - image_b[(p_I2_x*NUMPIXELS_Y) + p_I2_y]));
//							if ( temp < 0 ) {
//								cost = cost - temp;
//							} else {
//								cost = cost + temp;
//							}
						}
					}

					if ( cost < mincost ) {
						mincost = cost;
						dx[(i_block_x*NUMBLOCKS_Y) + i_block_y] = i_search_x;
						dy[(i_block_x*NUMBLOCKS_Y) + i_block_y] = i_search_y;
					}

					// Index start number of considered block in Image 2
					p_I2start_y++;
				}

				// Index start number of considered block in Image 2
				p_I2start_x++;
			}

			// index start number of considered block in Image 1 in y-direction
			p_I1start_y += BLOCKSIZE_Y;

		}

		// index start number of considered block in Image 1 in x-direction
		p_I1start_x += BLOCKSIZE_X;
	}
}
#endif

#if false
/*
 * estimates the displacement between image_a and image_b
 */
void block_matching_raw( uint8_t* image_a, uint8_t* image_b, uint8_t* dx, uint8_t* dy ) {
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
#endif
#endif

/*
 * calculate velocity vector from displacment flow field
 * AVERAGE-method
 */
void velocity_estimation_AVG( int8_t* dx, int8_t* dy, int8_t* vx, int8_t* vy ) {

    uint8_t count = 0;
    *vx = 0;
    *vy = 0;

    uint16_t nb = 0;				// block index

    for ( nb = 0; nb < NUMBLOCKS_X*NUMBLOCKS_Y; nb++) {
        if ( dx[nb] != 0 || dy[nb] != 0 ) {
			// -> only consider non-zero vectors!
			count++;
			*vx += dx[nb];
			*vy += dy[nb];
        }
    }

    if ( count != 0 ) {

    		// Shift to the left to achieve higher accuracy for division
    		*vx <<= 3;
		*vy <<= 3;

        *vx /= count;
        *vy /= count;
    }
}
