#!/usr/bin/env ruby
#
#require './largest_prime_facter'


# Problem 12 from projecteuler.net

# The sequence of triangle numbers is generated by adding the natural numbers.
# So 
# the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten
# terms would be:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#     1: 1
#     3: 1,3
#     6: 1,2,3,6
#    10: 1,2,5,10
#    15: 1,3,5,15
#    21: 1,3,7,21
#    28: 1,2,4,7,14,28
#
# We can see that 28 is the first triangle number to have over five divisors.
#
# What is the value of the first triangle number to have over five hundred
# divisors?
# 

def get_divisors n
  n = n/2 if n % 2 == 0 
  divisors = 1
  count = 0
  while n % 2 == 0
    count += 1
    n = n/2
  end
  divisors *= (count + 1)
  p = 3
  while n != 1
    count = 0
    while n % p == 0
      count += 1
      n = n/p
    end
    divisors *= (count + 1)
    p += 2
  end
  #puts divisors
  return divisors
end

def find_tri_index(factor_limit)
  n = 1
  lnum, rnum = get_divisors(n), get_divisors(n+1)
  while (lnum * rnum) < factor_limit
    puts "lnum = #{lnum}, rnum = #{rnum} with total = #{rnum * lnum}"
    #divisors = get_divisors(tri_num)
    n += 1
    lnum, rnum = rnum, get_divisors(n+1)
  end
  return n
end

start_time = Time.now()
target = ARGV[0].to_i || 500
index = find_tri_index(target)
puts "index = #{index}" 
triangle = (index * (index + 1)) / 2

puts "#{triangle} has #{target} divisors, found in #{Time.now - start_time}"

# vim: ai ts=2 sts=2 et sw=2 ft=ruby
