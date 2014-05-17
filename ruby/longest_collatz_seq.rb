#!/usr/bin/env ruby

# 
# Problem 14 from projecteuler.net
#
# The following iterative sequence is defined for the set of positive integers:
# 
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# 
# It can be seen that this sequence (starting at 13 and finishing at 1) contains
# 10 terms. Although it has not been proved yet (Collatz Problem), it is thought
# that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?

max_chain = 0
max_chain_start = 0
$hash_of_chains = Hash.new

def chain_for_n n
  ctr = 0
  while n > 1
    if $hash_of_chains.has_key?(n)
      return (ctr + $hash_of_chains[n])
    end
    if n % 2 == 0
      n = n/2
    else
      n = 3 * n + 1
    end
    ctr += 1
  end
  $hash_of_chains[n] = ctr
  return ctr
end

2.upto(1_000_000) do |n|
  chain = chain_for_n n
  if (chain > max_chain)
    max_chain_start = n
    max_chain = chain
  end
#  puts "n = #{n}, max_chain_start = #{max_chain_start}, ctr = #{max_chain}"
end

puts max_chain
