#!/usr/bin/env python


# Problem 3 from projecteuler.net
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

import math

target_num = 13195
target_num = 600851475143
ctr = 2
prime_factors = []

def is_prime(num):
  #print("Checking %i" % num)
  max = int(math.ceil(math.sqrt(num)))
  #print("max = %i" % max)
  for n in range(2, max):
    #print("Checking %i" % n)
    if num % n == 0:
      return False
  return True

def is_a_factor(big_num, little_num):
  if big_num % little_num == 0:
    return True

while ctr < int(math.floor(target_num/2)):
  ctr += 1
  if ctr % 2 == 0:
    continue
  if not is_a_factor(target_num, ctr):
    continue
  if (not is_prime(ctr)):
    continue
  prime_factors.append(ctr)
  print("%i" % ctr)
