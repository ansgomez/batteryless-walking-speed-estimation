#!/usr/bin/python3
# Script for sending a mask to the MSP432
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
DEFAULT_IMAGE_BYTES_PER_PIXEL = 1 # bytes/pixel

DEFAULT_MASK_NAME = 'mask'

# parse commandline arguments
# TODO parse command line arguments
serial_device = DEFAULT_SERIAL_DEVICE
serial_baudrate = DEFAULT_BAUD_RATE

image_rows = DEFAULT_IMAGE_ROWS
image_cols = DEFAULT_IMAGE_COLS
image_bytes_per_pixel = DEFAULT_IMAGE_BYTES_PER_PIXEL
image_size = image_rows * image_cols * image_bytes_per_pixel

mask_base_name = DEFAULT_MASK_NAME

# open serial connection for sending/reading images
print("Open serial port {0} with baudrate {1}".format(serial_device, serial_baudrate))
ser = serial.Serial(serial_device, serial_baudrate, timeout=60)

# send mask
try:
	# open binary data of image
	filename = mask_base_name + ".bin"        
	fbin = open(filename, "rb")
	image_raw = fbin.read()
	fbin.close()

	print("Send mask...")
	ser.write(image_raw)

except serial.serialutil.SerialException:
	print("Error in sending mask.")

except KeyboardInterrupt:
	print("Interrupted by user.")

time.sleep(1)
while ser.out_waiting > 0:
	continue

# close serial connection again
ser.close()

print("Done.")
