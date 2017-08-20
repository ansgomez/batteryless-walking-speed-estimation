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
#define ONE_BLOCK 	1

#if ONE_BLOCK == 0
	// block_matching
	#define BLOCKSIZE_X 				8
	#define BLOCKSIZE_X_HALF 		4
	#define BLOCKSIZE_Y 				8
	#define BLOCKSIZE_Y_HALF 		4
	#define SEARCHAREA_X_NEG 			-2
	#define SEARCHAREA_X_POS 			2
	#define SEARCHAREA_Y_NEG 			-12
	#define SEARCHAREA_Y_POS 			0

	#define EFF_NUMPIXELS_X 		108	// NUMPIXELS_X - (-SEARCHAREA_X_NEG) - SEARCHAREA_X_POS
	#define EFF_NUMPIXELS_Y 		100	// NUMPIXELS_Y - (-SEARCHAREA_Y_NEG) - SEARCHAREA_Y_POS
	#define NUMBLOCKS_X 			13	// EFF_NUMPIXELS_X/BLOCKSIZE_X
	#define NUMBLOCKS_Y 			12	// EFF_NUMPIXELS_Y/BLOCKSIZE_Y

#else

	// One huge block: one_block_matching
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

void block_matching( uint8_t* image_a, uint8_t* image_b, uint8_t* dx, uint8_t* dy );

// not optimized
void block_matching_raw( uint8_t* image_a, uint8_t* image_b, uint8_t* dx, uint8_t* dy );

#endif /* IMAGE_PROCESSING_H_ */
