#!/usr/bin/env ruby


# Problem 9 from projecteuler.net
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c,
# for which, a^2 + b^2 = c^2
#
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
# 

1.upto(1000) do |a|
  1.upto(1000) do |b|
    c2 = a**2 + b**2
    if Math.sqrt(c2) == Math.sqrt(c2).floor and a + b + Math.sqrt(c2).floor == 1000
      puts a * b * Math.sqrt(c2).floor
    end
  end
end

# vim: ai ts=2 sts=2 et sw=2 ft=ruby
