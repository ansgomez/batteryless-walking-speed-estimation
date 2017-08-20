#!/usr/bin/python3
# Script for commandline image acquisition and reconstruction using the Centeye Stonyman sensor
# dependendies: python-serial, python-numpy, python-matplotlib

# python 2 compatibility includes
from __future__ import print_function

import os
import serial
import sys

import numpy as np
import matplotlib.cm as cm
import matplotlib.mlab as mlab
import matplotlib.pyplot as plt


# default settings
DEFAULT_SERIAL_DEVICE = '/dev/tty.usbmodem1423'
DEFAULT_BAUD_RATE = 115200

DEFAULT_IMAGE_ROWS = 112 # pixels
DEFAULT_IMAGE_COLS = 112 # pixels
DEFAULT_IMAGE_BYTES_PER_PIXEL = 2 # bytes/pixel

DEFAULT_IMAGE_COUNT = 2
DEFAULT_IMAGE_BASE_NAME = 'image'

# parse commandline arguments
image_rows = DEFAULT_IMAGE_ROWS
image_cols = DEFAULT_IMAGE_COLS
image_bytes_per_pixel = DEFAULT_IMAGE_BYTES_PER_PIXEL
image_size = image_rows * image_cols * image_bytes_per_pixel

mask_filename = "mask.bin"
image_base_name = DEFAULT_IMAGE_BASE_NAME
images_count = DEFAULT_IMAGE_COUNT

if os.path.isfile(mask_filename):
	filename = "mask.bin"
	
	fbin = open(filename, "rb")
	mask_raw = fbin.read()
	fbin.close()

	print("Mask acquired, saving to file 'mask.png'.")
	
	mask_array = np.fromstring(mask_raw, dtype=np.uint8)
	temp = 256 * mask_array[0:image_size:2] + mask_array[1:image_size:2]
	mask = np.resize(temp, (image_rows, image_cols))
	
	plt.imsave("mask.png", mask, cmap=cm.gray)


	# image buffer
	images = np.zeros((images_count, image_cols, image_rows))

	# acquire images
	for i in range(images_count):
		filename = image_base_name + str(i) + ".bin"
	
		fbin = open(filename, "rb")
		image_raw = fbin.read()
		fbin.close()
	
		# create image array
		image_array = np.fromstring(image_raw, dtype=np.uint8)
		temp = 256 * image_array[0:image_size:2] + image_array[1:image_size:2]
		images[i] = np.resize(temp, (image_rows, image_cols))
	
		# im = plt.imshow(images[i], cmap=cm.gray)

		#image_filename = image_base_name + str(i) + ".png"
		#print("Image acquired, saving to file '{0}'.".format(image_filename))
		#plt.imsave(image_filename, images[i], cmap=cm.gray)

print("Processing images...")

# do image processing and reconstruction of individual images
for i in range(np.size(images, 0)):
    image_masked = images[i] - mask

    image_reconstructed = mask - images[i]

    image_filename = "image" + str(i) + ".png"
    plt.imsave(image_filename, image_reconstructed, cmap=cm.gray)

print("Done.")

