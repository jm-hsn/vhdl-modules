import re
import time
import cv2
import numpy as np

def showHex(txt, i):
  time, unit, val = txt.strip().split(" ")
  time = int(time)
  for x in ["s", "ms", "us", "ns", "ps", "fs"]:
    if unit == x:
      break
    time /= 1000.0

  if re.match(r'[01]{32}', val, re.M):
    num = int(val, 2)
    print("{:6d} {:8.0f} ns {} {:08X}".format(i, time * 10**9, val, num))
  else:
    print("{:6d} {:8.0f} ns {}".format(i, time * 10**9, val))

size = 224
kernel = 5
border = int(kernel/2)
sizeWithBorder = size+2*border
pixels = sizeWithBorder**2

imageIn  = np.zeros((sizeWithBorder,sizeWithBorder,1), np.uint8)
imageOut = np.zeros((sizeWithBorder,sizeWithBorder,1), np.uint8)

def setPixel(img, txt, i, input):
  time, unit, val = txt.strip().split(" ")
  time = int(time)
  for x in ["s", "ms", "us", "ns", "ps", "fs"]:
    if unit == x:
      break
    time /= 1000.0

  if re.match(r'[01]{32}', val, re.M):
    num = int(val, 2)
    if num > 0x7FFFFFFF:
      num = num - 0xFFFFFFFF - 1

    if not input:
      num = num/25
    x = i % sizeWithBorder
    y = int(i / sizeWithBorder) % sizeWithBorder
    img[y][x] = num

def main():
  with open("vivado_project/vhdl-modules.sim/sim_1/behav/xsim/input.txt", "r") as inFile:
    #print("Input:")
    i = 0
    for line in inFile:
      if i < 3 or i >= 3 + pixels:
        showHex(line, i)
      else:
        setPixel(imageIn, line, i-3, True)
      i += 1

  with open("vivado_project/vhdl-modules.sim/sim_1/behav/xsim/output.txt", "r") as outFile:
    #print("Output:")
    i = 0
    for line in outFile:
      if i < 3 or i >= 3 + pixels:
        showHex(line, i)
      else:
        setPixel(imageOut, line, i-3, False)
      i += 1  

#while True:
  #print("\n\n\n\n")
main()
cv2.imshow('send', imageIn)
cv2.imshow('recv', imageOut)
cv2.waitKey(0)
