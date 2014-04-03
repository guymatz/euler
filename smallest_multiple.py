#!/usr/bin/env python

max_num = 20

ctr = 10

def is_divisible(num_to_check):
  for n in range(max_num, 1, -1):
    #print "Checking %i against %i" % (n, num_to_check)
    if num_to_check % n != 0:
      return False
  return True

while 1:
  if ctr % 10000000 == 0:
    print ctr
  if is_divisible(ctr):
    print ctr
    exit(0)
  ctr += 5
# vim: expandtab ts=2 sw=2 sts=2
