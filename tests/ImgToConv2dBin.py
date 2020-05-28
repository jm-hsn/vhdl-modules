import re
import time
import cv2
import numpy as np
import random

preamble = 0xE1E4C312
moduleId = 0x4cd2e19c
jobId = 0x12345678

size = 224
kernel = 5
border = int(kernel/2)
sizeWithBorder = size+2*border
pixels = sizeWithBorder**2

image = cv2.imread("Test_card.png")

image = cv2.resize(image, (size, size))
image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

image = cv2.copyMakeBorder(image, border, border, border, border, cv2.BORDER_REPLICATE)


cs = moduleId + jobId + np.sum(image)
csc = 2**32 - cs % (2**32)
if csc == 2**32:
	csc = 0

delay = 0

with open("workspace/complete-bd/complete-bd.sim/sim_1/behav/xsim/input.txt", "w") as inFile:

  inFile.write("{:d} ns {:032b}\n".format(delay, preamble))
  inFile.write("{:d} ns {:032b}\n".format(delay, jobId))
  inFile.write("{:d} ns {:032b}\n".format(delay, moduleId))


  for i in range(pixels):
    y, x = int(i / sizeWithBorder), i % sizeWithBorder
    val = image[y][x]
    inFile.write("{:d} ns {:032b}\n".format(delay, val))


  inFile.write("{:d} ns {:032b}\n".format(delay, csc))

with open("workspace/complete-bd/complete-bd.sim/sim_1/behav/xsim/outputTimings.txt", "w") as inFile:

	for i in range(4 + pixels):
		inFile.write("{:d} ns\n".format(0))
