#!/usr/bin/env python


# Problem 3 from projecteuler.net
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

import math

target_num = 600851475143
target_num = 13195
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

for i in range(3,target_num):
  if i % 2 == 0:
    continue
  if not is_a_factor(target_num, i):
    continue
  if (not is_prime(i)):
    continue
  prime_factors.append(i)
  print("%i" % i)
