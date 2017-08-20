#!/usr/bin/python3
# Script for commandline image acquisition and reconstruction using the Centeye Stonyman sensor
# dependendies: python-serial, python-numpy, python-matplotlib

# python 2 compatibility includes
from __future__ import print_function

import os
import serial
import sys
import time

import scipy.io

import numpy as np
import matplotlib.cm as cm
import matplotlib.mlab as mlab
import matplotlib.pyplot as plt


# default settings
DEFAULT_SERIAL_DEVICE = '/dev/tty.usbmodem00000001'
DEFAULT_BAUD_RATE = 115200

DEFAULT_IMAGE_ROWS = 112 # pixels
DEFAULT_IMAGE_COLS = 112 # pixels
DEFAULT_NUMBLOCKS_X = 13 # pixels
DEFAULT_NUMBLOCKS_Y = 12 # pixels
DEFAULT_IMAGE_BYTES_PER_PIXEL = 1 # bytes/pixel

DEFAULT_IMAGE_COUNT = 2
DEFAULT_IMAGE_BASE_NAME = 'image'

# parse commandline arguments
# TODO parse command line arguments
serial_device = DEFAULT_SERIAL_DEVICE
serial_baudrate = DEFAULT_BAUD_RATE

image_rows = DEFAULT_IMAGE_ROWS
image_cols = DEFAULT_IMAGE_COLS
image_bytes_per_pixel = DEFAULT_IMAGE_BYTES_PER_PIXEL
image_size = image_rows * image_cols * image_bytes_per_pixel
numblocks_x = DEFAULT_NUMBLOCKS_X
numblocks_y = DEFAULT_NUMBLOCKS_Y
d_size = numblocks_x * numblocks_y
images_count = DEFAULT_IMAGE_COUNT

# make new directory
#dir = str(np.floor(time.time()));
#try:
#    os.stat(dir)
#except:
#    os.mkdir(dir)

image_base_name = DEFAULT_IMAGE_BASE_NAME

# open serial connection for sending/reading images
print("Open serial port {0} with baudrate {1}".format(serial_device, serial_baudrate))
ser = serial.Serial(serial_device, serial_baudrate, timeout=60)

# send images
for i in range(images_count):
    try:
        # open binary data of image
        filename = image_base_name + str(i) + ".bin"        
        fbin = open(filename, "rb")
        image_raw = fbin.read()
        fbin.close()

        print("Send image '{0}'.".format(i))
        ser.write(image_raw)

    except serial.serialutil.SerialException:
        print("Error in sending image.")

    except KeyboardInterrupt:
        print("Interrupted by user.")
        break

# receive images
for i in range(images_count):
    try:
        print("Receive distance data '{0}'.".format(i))
        data_raw = ser.read(d_size)
    
        # save binary data of image
        filename =  "d" + str(i) + "_msp.bin"        
        fbin = open(filename, "wb")
        fbin.write(data_raw)
        fbin.close()
        
        # store image as png
        data_array = np.fromstring(data_raw, dtype=np.uint8)
        image = np.resize(data_array, (numblocks_y, numblocks_x))
        image_filename = "d" + str(i) + "_msp.png"
        plt.imsave(image_filename, image, cmap=cm.gray)


    except serial.serialutil.SerialException:
        print("Error in reading image.")

    except KeyboardInterrupt:
        print("Interrupted by user.")
        break

# close serial connection again
ser.close()

print("Done.")
