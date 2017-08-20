/*
 * image_processing.h
 *
 *  Created on: 26.04.2016
 *      Author: thomas
 */

#ifndef IMAGE_PROCESSING_V1_H_
#define IMAGE_PROCESSING_V1_H_

#define NUMPIXELS_X 	112
#define NUMPIXELS_Y 	112

#define BLOCKSIZE_X 				8
#define BLOCKSIZE_X_HALF 		4
#define BLOCKSIZE_Y 				8
#define BLOCKSIZE_Y_HALF 		4
#define SEARCHAREA_X_NEG 			-4
#define SEARCHAREA_X_POS 			4
#define SEARCHAREA_Y_NEG 			-4
#define SEARCHAREA_Y_POS 			4

#define NUMBLOCKS_X 		NUMPIXELS_X/BLOCKSIZE_X
#define NUMBLOCKS_Y 		NUMPIXELS_Y/BLOCKSIZE_Y

// Functions
void block_matching( uint8_t* image_a, uint8_t* image_b, uint8_t* dx, uint8_t* dy );

#endif /* IMAGE_PROCESSING_V1_H_ */
