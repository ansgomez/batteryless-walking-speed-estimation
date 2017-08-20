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
mask_filename = 'mask.bin'
source_prototype_filename = 'camera_fpn.h.in'
source_filename = 'camera_fpn.h'

# check arguments
if len(sys.argv) > 1:
    if os.path.isfile(sys.argv[1]):
        mask_filename = sys.argv[1]
    else:
        print('ERROR: file does not extist "{0}".'.format(sys.argv[1]))
        exit(1)


# load mask file
print("Loading mask file '{0}'".format(mask_filename))

mask_array = np.fromfile(mask_filename, dtype=np.uint8)
if IMAGE_BYTES_PER_PIXEL == 2:
    temp = 256 * mask_array[0:image_size:2] + mask_array[1:image_size:2]
else:
	maxvalue = np.amax(mask_array)
	temp = mask_array + 256 - maxvalue
mask = np.resize(temp, (IMAGE_ROWS, IMAGE_COLS))


# generate C code array
fpn_data = '{\n'
for i in range(IMAGE_ROWS):
    fpn_data = fpn_data + 8*' '
    for j in range(IMAGE_COLS):
        if IMAGE_BYTES_PER_PIXEL == 2:
            fpn_data = fpn_data + '0x{:04x}, '.format(mask[i][j])
        else:
            fpn_data = fpn_data + '0x{:02x}, '.format(mask[i][j])
    fpn_data = fpn_data + '\n'
fpn_data = fpn_data + '};'


# apply new mask to prototype source file
print('read prototyp file "{0}"'.format(source_prototype_filename))
proto_file = open(source_prototype_filename, mode='rt')
proto_source_text = proto_file.read()
proto_file.close()

print('generate output file "{0}"'.format(source_filename))
source_file = open(source_filename, mode='wt')
source_file.write(proto_source_text.replace('<<CAMERA_FPN_DATA>>', fpn_data))
source_file.close()

print("done.")
