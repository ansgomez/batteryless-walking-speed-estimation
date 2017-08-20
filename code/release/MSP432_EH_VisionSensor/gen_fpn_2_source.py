#!/usr/bin/python3
# Generate source file for centey stonyman fixed pattern noise
# argument: input file that contians the raw mask data

import os
import sys

import numpy as np

IMAGE_ROWS = 112 # pixels
IMAGE_COLS = 112 # pixels
IMAGE_BYTES_PER_PIXEL = 1 # bytes/pixel

image_size = IMAGE_ROWS * IMAGE_COLS * IMAGE_BYTES_PER_PIXEL
mask1_filename = 'mask1.bin'
mask2_filename = 'mask2.bin'
source_prototype_filename = 'camera_fpn.h.in'
source_filename = 'camera_fpn.h'


# load mask file
print("Loading mask file 1 '{0}'".format(mask1_filename))
print("Loading mask file 2 '{0}'".format(mask2_filename))

mask1_array = np.fromfile(mask1_filename, dtype=np.uint8)
mask2_array = np.fromfile(mask2_filename, dtype=np.uint8)
if IMAGE_BYTES_PER_PIXEL == 2:
    temp1 = 256 * mask1_array[0:image_size:2] + mask1_array[1:image_size:2]
    temp2 = 256 * mask2_array[0:image_size:2] + mask2_array[1:image_size:2]
else:
    mask1_array = -(mask1_array - 256)
    mask2_array = -(mask2_array - 256)
    maxvalue1 = np.amax(mask1_array)
    maxvalue2 = np.amax(mask2_array)
    temp1 = mask1_array + 256 - maxvalue1
    temp2 = mask2_array + 256 - maxvalue2
mask1 = np.resize(temp1, (IMAGE_ROWS, IMAGE_COLS))
mask2 = np.resize(temp2, (IMAGE_ROWS, IMAGE_COLS))


# generate C code array
fpn1_data = '{\n'
fpn2_data = '{\n'
for i in range(IMAGE_ROWS):
    fpn1_data = fpn1_data + 8*' '
    fpn1_data = fpn1_data + 8*' '
    for j in range(IMAGE_COLS):
        if IMAGE_BYTES_PER_PIXEL == 2:
            fpn1_data = fpn1_data + '0x{:04x}, '.format(mask1[i][j])
            fpn2_data = fpn2_data + '0x{:04x}, '.format(mask2[i][j])
        else:
            fpn1_data = fpn1_data + '0x{:02x}, '.format(mask1[i][j])
            fpn2_data = fpn2_data + '0x{:02x}, '.format(mask2[i][j])
    fpn1_data = fpn1_data + '\n'
    fpn2_data = fpn2_data + '\n'
fpn1_data = fpn1_data + '};'
fpn2_data = fpn2_data + '};'


# apply new mask to prototype source file
print('read prototyp file "{0}"'.format(source_prototype_filename))
proto_file = open(source_prototype_filename, mode='rt')
proto_source_text = proto_file.read()
proto_file.close()

print('generate output file "{0}"'.format(source_filename))
source_file = open(source_filename, mode='wt')
proto_source_text = proto_source_text.replace('<<CAMERA_FPN1_DATA>>', fpn1_data)
proto_source_text = proto_source_text.replace('<<CAMERA_FPN2_DATA>>', fpn2_data)
source_file.write(proto_source_text)
source_file.close()

print("done.")
