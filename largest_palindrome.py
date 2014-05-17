#!/usr/bin/env python

import sys
import math

try:
  digits = int(sys.argv[1])
except:
  digits = int(raw_input("How many digits? "))

largest_palindrome = 0

def is_palindrome(num):
  snum = str(num)
  #print "snum:"
  for n in range(0,int(len(snum)/2)):
    #print "%s ?= %s" % (snum[n],snum[-n])
    if snum[n] != snum[-n-1]:
      return False
  #print snum
  return True

for i in range(1,10**digits):
  for j in range(1, 10**digits):
    product = i * j
    #print "%i = " % product
    if is_palindrome(product) and product > largest_palindrome:
      largest_palindrome = product

print largest_palindrome
