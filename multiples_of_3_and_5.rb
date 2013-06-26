#!/usr/bin/env ruby


# Problem 1 from projecteuler.net
# 
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

require 'benchmark'

total=0

Benchmark.bm do |x|

  x.report { 1.upto(999) do |n|
               next unless (n % 3 == 0 or n % 5 == 0)
               total += n
             end
             puts "total = #{total}"
  }

  x.report { 999.upto(1) do |n|
               if n =~ /.*[05]\Z/
                 total = total + n
                 next
               end
               res = n / 3.0
               if res =~ /.*0\Z/
                 total = total + n
                 next
               end
             end
             puts "total = #{total}"
             puts total
  }
end
