#!/usr/bin/python3
# Script for command line image download and reconstruction of Centeye Stonyman sensor
# dependendies: python-serial, python-numpy, python-matplotlib

# python 2 compatibility includes
from __future__ import print_function

import os
import serial
import sys

import numpy as np
import matplotlib
matplotlib.use('Qt4Agg')
import matplotlib.cm as cm
import matplotlib.pyplot as plt

# default settings
DEFAULT_SERIAL_DEVICE = '/dev/ttyACM1'
# DEFAULT_SERIAL_DEVICE = '/dev/ttyUSB0'
DEFAULT_BAUD_RATE = 115200
# DEFAULT_BAUD_RATE = 1000000

IMAGE_ROWS = 112 # pixels
IMAGE_COLS = 112 # pixels

IMAGE_BASE_DIR = 'download'
IMAGE_BASE_NAME = 'image'
IMAGE_MASK_NAME = 'mask'


# parse commandline arguments
# TODO parse command line arguments
serial_device = DEFAULT_SERIAL_DEVICE
serial_baudrate = DEFAULT_BAUD_RATE

mask_filename = "mask-10-8bit.raw"
image_size = IMAGE_ROWS * IMAGE_COLS

image_base_file = os.path.join(IMAGE_BASE_DIR, IMAGE_BASE_NAME)
mask_file = os.path.join(IMAGE_BASE_DIR, IMAGE_MASK_NAME)


# open serial connection for reading camera data
print("Open serial port {0} with baudrate {1}".format(serial_device, serial_baudrate))
ser = serial.Serial(serial_device, serial_baudrate, timeout=60)

# send start signal to the MCU
ser.flushInput()
#ser.write(b'!')

# use first as mask if configured
if os.path.isfile(mask_filename):
    print("Loading mask file '{0}'".format(mask_filename))

    mask_array = np.fromfile(mask_filename, dtype=np.uint8)
    mask = np.resize(mask_array, (IMAGE_ROWS, IMAGE_COLS))

else:
    print("No mask file given: using first acquisition as mask.")
    try:
        print("Waiting for mask.")
        mask_raw = ser.read(image_size)

        filename = mask_file + ".raw"
        print("Mask acquired, saving to file '{0}'.".format(filename))

        fbin = open(filename, "wb")
        fbin.write(mask_raw)
        fbin.close()

        mask_array = np.fromstring(mask_raw, dtype=np.uint8)
        mask = np.resize(mask_array, (IMAGE_ROWS, IMAGE_COLS))

        filename = mask_file + ".png"
        plt.imsave(filename, mask, cmap=cm.gray)

    except serial.serialutil.SerialException:
        print("Error in reading image.")
        sys.exit(1)

    except KeyboardInterrupt:
        print("Interrupted by user.")
        sys.exit(1)


# print("mask min: {0}, max: {1}".format(mask.min(), mask.max()))
# print(mask[1:50])


# setup figures and interactive mode
plt.ion()
plt.figure()
ax = plt.axes(frameon=False)
ax.axes.get_xaxis().set_visible(False)
ax.axes.get_yaxis().set_visible(False)
plt.show()

# acquire images
i = 0
while True:
    try:
        print("Waiting for image '{0}'.".format(i))
        image_raw = ser.read(image_size)

        # if (i % 10) == 0:
        #     ser.close()
        #     ser = serial.Serial(serial_device, serial_baudrate, timeout=60)
        # ser.flushInput()

        # store binary data as backup
        filename = image_base_file + str(i) + ".raw"

        print("Image acquired, saving to file '{0}'.".format(filename))

        fbin = open(filename, "wb")
        fbin.write(image_raw)
        fbin.close()

        # create image array
        image_array = np.fromstring(image_raw, dtype=np.uint8)
        image = np.resize(image_array, (IMAGE_ROWS, IMAGE_COLS))

        # print("image min: {0}, max: {1}".format(image.min(), image.max()))
        # print(image[10, 1:50])

        image_masked = 2**10 + image - mask

        # print("image_masked min: {0}, max: {1}".format(image_masked.min(), image_masked.max()))
        # print(image_masked[10, 1:50])


        # print("mask min: {0}, max: {1}".format(image_masked.min(), image_masked.max()))
        # print(image_masked[0, :])


        image_reconstructed = image_masked.max() - image_masked
        # image_reconstructed = image_masked - image_masked.min()

        # print("image_reconstructed min: {0}, max: {1}, median: {2}".format(image_reconstructed.min(), image_reconstructed.max(), np.median(image_reconstructed)))
        # print(image_reconstructed[0, :])

        image_normalized = image_reconstructed
        # image_normalized = (image_reconstructed - image_reconstructed.min()) / 2

        # print("image_normalized min: {0}, max: {1}".format(image_normalized.min(), image_normalized.max()))
        # print(image_normalized[0, :])

        im = plt.imshow(image_normalized, cmap=cm.gray)

        image_filename = image_base_file + str(i) + ".png"
        plt.imsave(image_filename, image_normalized, cmap=cm.gray)

        plt.pause(0.1)
        i = i + 1

    except serial.serialutil.SerialException:
        print("Error in reading image.")

    except KeyboardInterrupt:
        print("Interrupted by user.")
        break

# close serial connection again
ser.close()

print("Done.")
