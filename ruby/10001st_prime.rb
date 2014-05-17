#!/usr/bin/env ruby


# Problem 7 from projecteuler.net
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
#
# What is the 10 001st prime number?
# 

def is_prime? num
  2.upto(Math.sqrt(num)) do |n|
    return false if (num % n == 0)
  end
  return true
end

ctr=1
prime_ctr=0
until prime_ctr == 10001
  ctr += 1
  prime_ctr += 1 if is_prime? ctr
end
  
puts ctr
# vim: ai ts=2 sts=2 et sw=2 ft=ruby
