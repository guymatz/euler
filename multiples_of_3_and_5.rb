#!/usr/bin/env ruby


# Problem 1 from projecteuler.net
# 
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

total=0

1.upto(999) do |n|
  next unless (n % 3 == 0 or n % 5 == 0)
  puts n
  total += n
end

puts "total = #{total}"
