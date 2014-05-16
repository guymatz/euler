#!/usr/bin/env python


# Problem 1 from projecteuler.net
# 
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

ctr = 0
total = 0

def div53(num):
  if num % 5 == 0 or num % 3 == 0:
    return True 

while ctr < 1000:
  if div53(ctr):
    total = total + ctr
  ctr += 1

print("total = %i" % total)
