#!/usr/bin/env python

import math

num_of_primes = 1  # skipping 2
prime_target = 6
prime_target = 10001

prime_check = 1

def is_prime(num):
  if num % 2 == 0:
    return False
  #print("Checking %i" % num)
  max = int(math.ceil(math.sqrt(num)))
  #print("max = %i" % max)
  for n in range(2, max+1):
    #print("Checking if %i divides %i" % (n, num))
    if num % n == 0:
      return False
  return True

while num_of_primes < prime_target:
  prime_check += 2
  if is_prime(prime_check):
    num_of_primes +=1
    print prime_check

# vim: expandtab ts=2 sw=2 sts=2
