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

DEFAULT_DATA_LENGTH = 112
DEFAULT_BYTES_PER_PIXEL = 2

# parse commandline arguments
# TODO parse command line arguments
serial_device = DEFAULT_SERIAL_DEVICE
serial_baudrate = DEFAULT_BAUD_RATE

data_size = DEFAULT_DATA_LENGTH * DEFAULT_BYTES_PER_PIXEL

# open serial connection for reading data
print("Open serial port {0} with baudrate {1}".format(serial_device, serial_baudrate))
ser = serial.Serial(serial_device, serial_baudrate, timeout=60)

try:
	print("Waiting for Data.")
	data_raw = ser.read(data_size)
   
	data_array = np.fromstring(data_raw, dtype=np.uint8)

	print(data_array);

except serial.serialutil.SerialException:
	print("Error in reading data.")
	sys.exit(1)
	
except KeyboardInterrupt:
	print("Interrupted by user.")
	sys.exit(1)

# close serial connection again
ser.close()

print("Done.")

