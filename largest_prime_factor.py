#!/usr/bin/env python

import math
import sys

try:
  target = int(sys.argv[1])
except IndexError, e:
  print e
  target = int(raw_input("What is the # for which you would like to find the largest prime factor? "))

def is_prime(num):
  #print "Checking if %i is prime" % num
  #if num % 2 == 0:
  #  return False
  max_check = int(math.sqrt(num))
  #print "Checking until %i" % (max_check+1)
  for n in xrange(3, max_check+1):
    #print "Checking to see if %i is divisible by %i" % (num, n)
    if num % n == 0:
      return False
  return True

def is_a_factor(num):
  if target % num == 0:
    return True
  else:
    return False

lpf = 0
for n in xrange(3, int(math.sqrt(target)), 2):
  if n % 100000 == 0:
    print "Checking %i" % n
  if is_a_factor(n) and is_prime(n):
    print "%i is a prime factor" % n
    lpf = n

print lpf
