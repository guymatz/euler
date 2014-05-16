#!/usr/bin/env python

max_pal = 0
min_int = 100
max_int = 1000

def is_pal(num):
  num_str = str(num)
  for n in range(0,len(num_str)-1):
    if num_str[n] != num_str[len(num_str) -1 - n]:
      return False
  return True

for i in range(min_int,max_int):
  for j in range(min_int,max_int):
    num = i * j
    if is_pal(num) and num > max_pal:
      max_pal = num

print max_pal
