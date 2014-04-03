#!/usr/bin/env python

max_num = 100

def sum_of_squares(num):
  total = 0
  for n in range(1, num+1):
      total = total + n**2
  return total

def square_of_sum(num):
  total = (num * (num+1))/2
  return total**2

for n in range(1, max_num+1):
  print "%i - %i %i" % (n, square_of_sum(n), sum_of_squares(n))
  print "    Diff = %i" % (square_of_sum(n) - sum_of_squares(n))
