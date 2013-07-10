#!/usr/bin/env ruby


# Problem 10 from projecteuler.net
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million. 

def is_prime? num
  2.upto(Math.sqrt(num)) do |n|
    return false if (num % n == 0)
  end
  return true
end

total=0
prime_ctr=2
until prime_ctr == 2_000_000
  if is_prime? prime_ctr
    total += prime_ctr 
    puts prime_ctr
  end
  prime_ctr += 1
end
  
puts total
# vim: ai ts=2 sts=2 et sw=2 ft=ruby
