#!/usr/bin/env ruby


# Problem 3 from projecteuler.net
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

def list_of_primes num_to_check
  orig_num = num_to_check.to_i
  num_to_check = (num_to_check.to_i / 2).floor
  #num_to_check = Math.sqrt(num_to_check.to_i).floor
  puts "Checking up to #{num_to_check}"
  a = ['x','x']
  return_list = []
  2.upto(num_to_check) do |j|
    next if a[j] == 'x'
    #puts "Working on #{j}"
    2.upto(num_to_check) do |i|
      break if i * j > num_to_check
      a[i * j] = 'x'
    end
    #puts "At #{j}, array has #{a.size} elements"
  end

  a.each_with_index do |n,i|
    break if i > num_to_check
    if n != 'x'
      return_list << i
    end
  end

  return_list
end

if __FILE__ == $0

  num = ARGV[0].to_i
  
  primes = list_of_primes(num)
  
  primes.each do |p|
    printf "%i ", p if ( num % p.to_i == 0 )
  end
end
# vim: ai ts=2 sts=2 et sw=2 ft=ruby
