#!/usr/bin/env python


# Problem 2 from projecteuler.net
# 
# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 
# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms

MAX_NUM = 4000000
#MAX_NUM = 100
fibonacci_number = 1
prev_fibonacci_number = 1
even_numbered_total = 0
ctr = 0

def is_even(num):
  if num % 2 == 0:
    return True

while fibonacci_number < MAX_NUM:
  if is_even(fibonacci_number):
    print("fib num is %i" % fibonacci_number)
    even_numbered_total += fibonacci_number
  tmp = prev_fibonacci_number
  prev_fibonacci_number = fibonacci_number
  fibonacci_number += tmp 

print("total is %i" % even_numbered_total)
