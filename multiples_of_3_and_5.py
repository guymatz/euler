#!/usr/bin/env python

import sys

max = int(sys.argv[1])
total = 0

def multiple_of_3_or_5(num):
  if (num % 5 == 0) or (num % 3 == 0):
    return True
  else:
    return False

for n in range(1,max):
  if multiple_of_3_or_5(n):
    total += n

print total
