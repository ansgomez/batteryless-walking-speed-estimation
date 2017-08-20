#!/usr/bin/python3
# Script for commandline image acquisition and reconstruction using the Centeye Stonyman sensor
# dependendies: python-serial, python-numpy, python-matplotlib

# python 2 compatibility includes
from __future__ import print_function

import os
import sys

import numpy as np
import matplotlib.cm as cm
import matplotlib.mlab as mlab
import matplotlib.pyplot as plt


# default settings
DEFAULT_IMAGE_ROWS = 112 # pixels
DEFAULT_IMAGE_COLS = 112 # pixels
DEFAULT_IMAGE_BYTES_PER_PIXEL = 2 # bytes/pixel

DEFAULT_IMAGE_COUNT = 5
DEFAULT_IMAGE_BASE_NAME = 'image'

# parse commandline arguments
# TODO parse command line arguments
image_rows = DEFAULT_IMAGE_ROWS
image_cols = DEFAULT_IMAGE_COLS
image_bytes_per_pixel = DEFAULT_IMAGE_BYTES_PER_PIXEL
image_size = image_rows * image_cols * image_bytes_per_pixel

mask_filename = "mask.bin"
image_base_name = DEFAULT_IMAGE_BASE_NAME
images_count = DEFAULT_IMAGE_COUNT


# use first as mask if configured
if os.path.isfile(mask_filename):
    try:
        print("Reading mask...")
        fbin = open(mask_filename, "rb")
        mask_raw = fbin.read()
        fbin.close()

        mask_array = np.fromstring(mask_raw, dtype=np.uint8)
        temp = 256 * mask_array[0:image_size:2] + mask_array[1:image_size:2]
        mask = np.resize(temp, (image_rows, image_cols))
        
        plt.imsave("mask.png", mask, cmap=cm.gray)

    except KeyboardInterrupt:
        print("Interrupted by user.")
        sys.exit(1)


# image buffer
images = np.zeros((images_count, image_cols, image_rows))

# acquire images
for i in range(images_count):
    try:
        print("Reading image '{0}'.".format(i))
        image_filename = image_base_name + str(i) + ".bin"
        fbin = open(image_filename, "rb")
        image_raw = fbin.read()
        fbin.close()

        image_array = np.fromstring(image_raw, dtype=np.uint8)
        temp = 256 * image_array[0:image_size:2] + image_array[1:image_size:2]
        images[i] = np.resize(temp, (image_rows, image_cols))
        
    except KeyboardInterrupt:
        print("Interrupted by user.")
        break


print("Processing images...")

# do image processing and reconstruction of individual images
for i in range(np.size(images, 0)):
    image_masked = images[i] - mask

    image_reconstructed = image_masked.max() - image_masked

    image_filename = "image_rec" + str(i) + ".png"
    plt.imsave(image_filename, image_reconstructed, cmap=cm.gray)

print("Done.")

