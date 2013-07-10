#!/usr/bin/env ruby


# Problem 5 from projecteuler.net
#
# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of
# the numbers from 1 to 20?

pos_number = 0

while true == true
  catch :outer do
    pos_number += 1
    if pos_number % 1000 == 0
      puts "up to #{pos_number}"
    end
    1.upto(19) do |d|
      throw :outer if pos_number % d != 0
    end
    puts "#{pos_number} is divisible by 1..20"
    exit
  end
end

puts "max = #{max}"
# vim: ai ts=2 sts=2 et sw=2 ft=ruby
