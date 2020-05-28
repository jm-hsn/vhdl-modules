import re
import time
import numpy as np
import random

preamble = 0xE1E4C312
moduleId = 0x2cb31e7c
jobId = 0x12345678

data = [x+1 for x in range(1024)]

cs = moduleId + jobId + np.sum(data)
csc = 2**32 - cs % (2**32)
if csc == 2**32:
	csc = 0

delay = 50

with open("vivado_project/vhdl-modules.sim/sim_1/behav/xsim/input.txt", "w") as inFile:

  inFile.write("{:d} ns {:032b}\n".format(delay, preamble))
  inFile.write("{:d} ns {:032b}\n".format(delay, jobId))
  inFile.write("{:d} ns {:032b}\n".format(delay, moduleId))

  for x in data:
  	inFile.write("{:d} ns {:032b}\n".format(delay, x))

  inFile.write("{:d} ns {:032b}\n".format(delay, csc))

with open("vivado_project/vhdl-modules.sim/sim_1/behav/xsim/outputTimings.txt", "w") as inFile:

	for i in range(8):
		inFile.write("{:d} ns\n".format(5))
