#!/usr/bin/python3
# Script for commandline image acquisition and reconstruction using the Centeye Stonyman sensor
# dependendies: python-serial, python-numpy, python-matplotlib

# python 2 compatibility includes
from __future__ import print_function

import os
import serial
import sys
import time

import numpy as np
import matplotlib.cm as cm
import matplotlib.mlab as mlab
import matplotlib.pyplot as plt


# default settings
DEFAULT_SERIAL_DEVICE = '/dev/tty.usbmodem00000001'
DEFAULT_BAUD_RATE = 115200

DEFAULT_IMAGE_ROWS = 112 # pixels
DEFAULT_IMAGE_COLS = 112 # pixels
DEFAULT_IMAGE_BYTES_PER_PIXEL = 2 # bytes/pixel

DEFAULT_IMAGE_COUNT = 5
DEFAULT_IMAGE_BASE_NAME = 'image'

# parse commandline arguments
# TODO parse command line arguments
serial_device = DEFAULT_SERIAL_DEVICE
serial_baudrate = DEFAULT_BAUD_RATE

image_rows = DEFAULT_IMAGE_ROWS
image_cols = DEFAULT_IMAGE_COLS
image_bytes_per_pixel = DEFAULT_IMAGE_BYTES_PER_PIXEL
image_size = image_rows * image_cols * image_bytes_per_pixel
images_count = DEFAULT_IMAGE_COUNT

# make new directory
dir = str(np.floor(time.time()));
try:
    os.stat(dir)
except:
    os.mkdir(dir)

image_base_name = dir + "/" + DEFAULT_IMAGE_BASE_NAME

# open serial connection for reading camera data
print("Open serial port {0} with baudrate {1}".format(serial_device, serial_baudrate))
ser = serial.Serial(serial_device, serial_baudrate, timeout=60)

# image buffer
images = np.zeros((images_count, image_cols, image_rows))

# acquire images
for i in range(images_count):
    try:
        print("Waiting for image '{0}'.".format(i))
        image_raw = ser.read(image_size)
        
        # store binary data as backup
        filename = image_base_name + str(i) + ".bin"
        
        print("Image acquired, saving to file '{0}'.".format(filename))
        
        fbin = open(filename, "wb")
        fbin.write(image_raw)
        fbin.close()

        # create image array
        image_array = np.fromstring(image_raw, dtype=np.uint8)
        temp = 256 * image_array[0:image_size:2] + image_array[1:image_size:2]
        images[i] = np.resize(temp, (image_rows, image_cols))
        
        
        im = plt.imshow(images[i], cmap=cm.gray)
        
        image_filename = image_base_name + str(i) + ".png"
        plt.imsave(image_filename, images[i], cmap=cm.gray)
    
    except serial.serialutil.SerialException:
        print("Error in reading image.")

    except KeyboardInterrupt:
        print("Interrupted by user.")
        break

# close serial connection again
ser.close()