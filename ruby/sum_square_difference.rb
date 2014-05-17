#!/usr/bin/env ruby


# Problem 5 from projecteuler.net
#
# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# 
# Hence the difference between the sum of the squares of the first ten
# natural numbers and the square of the sum is 3025 − 385 = 2640.
# 
# Find the difference between the sum of the squares of the first one
# hundred natural numbers and the square of the sum.
# 

def sum_squares_up_to num
  num = num.to_i
  total = 0

  1.upto(num) do |n|
    total += n**2
  end

  total
end

def squared_sum num
  num = num.to_i

  return ( (num * (num + 1))/2 )**2
end

sum_of_squares = sum_squares_up_to ARGV[0]
square_of_sum = squared_sum ARGV[0]

diff = square_of_sum - sum_of_squares

puts diff
# vim: ai ts=2 sts=2 et sw=2 ft=ruby
