/*
 * image_processing.h
 *
 *  Created on: 26.04.2016
 *      Author: thomas
 */

#ifndef IMAGE_PROCESSING_H_
#define IMAGE_PROCESSING_H_

#define NUMPIXELS_X 	112
#define NUMPIXELS_Y 	112

// choose, if one huge block is used (1), or several small blocks (0)
#define ONE_BLOCK 	0

#if ONE_BLOCK == 0
	// block_matching
/*
	#define BLOCKSIZE_X 				108
	#define BLOCKSIZE_X_HALF 		54
	#define BLOCKSIZE_Y 				100
	#define BLOCKSIZE_Y_HALF 		50
	#define SEARCHAREA_X_NEG 			-2
	#define SEARCHAREA_X_POS 			2
	#define SEARCHAREA_Y_NEG 			-12
	#define SEARCHAREA_Y_POS 			0

	#define EFF_NUMPIXELS_X 		108	// NUMPIXELS_X - (-SEARCHAREA_X_NEG) - SEARCHAREA_X_POS
	#define EFF_NUMPIXELS_Y 		100	// NUMPIXELS_Y - (-SEARCHAREA_Y_NEG) - SEARCHAREA_Y_POS
	#define NUMBLOCKS_X 			1	// EFF_NUMPIXELS_X/BLOCKSIZE_X
	#define NUMBLOCKS_Y 			1	// EFF_NUMPIXELS_Y/BLOCKSIZE_Y
*/

	#define BLOCKSIZE_Y 				48
	#define BLOCKSIZE_Y_HALF 		24
	#define BLOCKSIZE_X 				52
	#define BLOCKSIZE_X_HALF 		26
	#define SEARCHAREA_Y_NEG 			-8
	#define SEARCHAREA_Y_POS 			8
	#define SEARCHAREA_X_NEG 			-3
	#define SEARCHAREA_X_POS 			3

	#define EFF_NUMPIXELS_Y 		96	// NUMPIXELS_X - (-SEARCHAREA_X_NEG) - SEARCHAREA_X_POS
	#define EFF_NUMPIXELS_X 		106	// NUMPIXELS_Y - (-SEARCHAREA_Y_NEG) - SEARCHAREA_Y_POS
	#define NUMBLOCKS_Y 			2	// EFF_NUMPIXELS_X/BLOCKSIZE_X
	#define NUMBLOCKS_X 			2	// EFF_NUMPIXELS_Y/BLOCKSIZE_Y

#else

	// One huge block: one_block_matching
/*
	#define SEARCHAREA_X_NEG 			-4
	#define SEARCHAREA_X_POS 			4
	#define SEARCHAREA_Y_NEG 			-4
	#define SEARCHAREA_Y_POS 			4

	#define EFF_NUMPIXELS_X 		104	// NUMPIXELS_X - (-SEARCHAREA_X_NEG) - SEARCHAREA_X_POS
	#define EFF_NUMPIXELS_Y 		104	// NUMPIXELS_Y - (-SEARCHAREA_Y_NEG) - SEARCHAREA_Y_POS
	#define NUMBLOCKS_X 			1	// EFF_NUMPIXELS_X/BLOCKSIZE_X
	#define NUMBLOCKS_Y 			1	// EFF_NUMPIXELS_Y/BLOCKSIZE_Y
*/

	#define SEARCHAREA_X_NEG 			-2
	#define SEARCHAREA_X_POS 			2
	#define SEARCHAREA_Y_NEG 			-12
	#define SEARCHAREA_Y_POS 			0

	#define EFF_NUMPIXELS_X 		108	// NUMPIXELS_X - (-SEARCHAREA_X_NEG) - SEARCHAREA_X_POS
	#define EFF_NUMPIXELS_Y 		100	// NUMPIXELS_Y - (-SEARCHAREA_Y_NEG) - SEARCHAREA_Y_POS
	#define NUMBLOCKS_X 			1	// EFF_NUMPIXELS_X/BLOCKSIZE_X
	#define NUMBLOCKS_Y 			1	// EFF_NUMPIXELS_Y/BLOCKSIZE_Y

#endif

// Functions

// using one huge block
void one_block_matching( uint8_t* image_a, uint8_t* image_b, uint8_t* dx, uint8_t* dy );

void block_matching( uint8_t* image_a, uint8_t* image_b, int8_t* dx, int8_t* dy );
void velocity_estimation_AVG(int8_t* dx, int8_t* dy, int8_t* vx, int8_t* vy);

// not optimized
void block_matching_raw( uint8_t* image_a, uint8_t* image_b, uint8_t* dx, uint8_t* dy );

#endif /* IMAGE_PROCESSING_H_ */
