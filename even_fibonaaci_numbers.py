#!/usr/bin/env python

import sys

try:
  max = int(sys.argv[1])
except IndexError, e:
  max = int(raw_input("Please enter a number: "))

def is_even(num):
  if num % 2 == 0:
    return True

total = 0

old = 1
new = 1
for n in range(1, max):
  fib = old + new
  if fib > max:
    break
  print "%i %i %i" % (old, new, fib)
  if is_even(fib):
    total += fib
  old = new
  new = fib

print total
