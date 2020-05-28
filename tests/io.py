import re
import time

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


def main():
  with open("workspace/complete-bd/complete-bd.sim/sim_1/behav/xsim/input.txt", "r") as inFile:
    print("Input:")
    i = 0
    for line in inFile:
      showHex(line, i)
      i += 1

  with open("workspace/complete-bd/complete-bd.sim/sim_1/behav/xsim/output.txt", "r") as outFile:
    print("Output:")
    i = 0
    for line in outFile:
      showHex(line, i)
      i += 1  

while True:
  print("\n\n\n\n")
  main()
  time.sleep(1)