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
source_prototype_filename = 'camera_fpn.h.in'
source_filename = 'camera_fpn.h'

# generate C code array
fpn1_data = '{\n'
fpn2_data = '{\n'
for i in range(IMAGE_ROWS):
    fpn1_data = fpn1_data + 8*' '
    fpn1_data = fpn1_data + 8*' '
    for j in range(IMAGE_COLS):
        if IMAGE_BYTES_PER_PIXEL == 2:
            fpn1_data = fpn1_data + '0x0000, '
            fpn2_data = fpn2_data + '0x0000, '
        else:
            fpn1_data = fpn1_data + '0x00, '
            fpn2_data = fpn2_data + '0x00, '
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
