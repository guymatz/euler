#!/usr/bin/env ruby


# Problem 4 from projecteuler.net
#
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome? num
  num = num.to_s
  num == num.reverse
end

max = 0

999.downto(100) do |i|
  999.downto(100) do |j|
    product = i * j
    if is_palindrome? product
      if product > max
        max = product
        break
      end
    end
  end
end
  
puts "max = #{max}"
# vim: ai ts=2 sts=2 et sw=2 ft=ruby
