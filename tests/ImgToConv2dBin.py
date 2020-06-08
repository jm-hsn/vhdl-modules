import re
import time
import cv2
import numpy as np
import random
import struct

preamble = 0xE1E4C312
moduleId = 0x4cd2e19c
jobId = 0x12345678

size = 224
kernelSize = 5
border = int(kernelSize/2)
sizeWithBorder = size+2*border
pixels = sizeWithBorder**2

image = cv2.imread("Test_card.png")

image = cv2.resize(image, (size, size))
image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

image = cv2.copyMakeBorder(image, border, border, border, border, cv2.BORDER_REPLICATE)

kernel = [
  1,  4, 6,  4,  1,
  4, 16, 24, 16, 4,
  6, 24, 36, 24, 6,
  4, 16, 24, 16, 4,
  1,  4,  6,  4, 1
]

cs = moduleId + jobId + np.sum(image) + np.sum(kernel)
delay = 0

with open("vivado_project/vhdl-modules.sim/sim_1/behav/xsim/input.txt", "w") as inFile:

  inFile.write("{:d} ns {:032b}\n".format(delay, preamble))
  inFile.write("{:d} ns {:032b}\n".format(delay, jobId))
  inFile.write("{:d} ns {:032b}\n".format(delay, moduleId))

  for i in range(kernelSize**2):
    val = struct.unpack('!i',struct.pack('!f', kernel[i] / 256))[0]
    inFile.write("{:d} ns {:032b}\n".format(delay, val))
    cs += val

  for i in range(pixels):
    y, x = int(i / sizeWithBorder), i % sizeWithBorder
    val = struct.unpack('!i',struct.pack('!f', image[y][x]))[0]
    inFile.write("{:d} ns {:032b}\n".format(delay, val))
    cs += val

  csc = 2**32 - cs % (2**32)
  if csc == 2**32:
    csc = 0

  inFile.write("{:d} ns {:032b}\n".format(delay, int(csc)))

with open("vivado_project/vhdl-modules.sim/sim_1/behav/xsim/outputTimings.txt", "w") as inFile:

	for i in range(4 + pixels):
		inFile.write("{:d} ns\n".format(315))
