#!/usr/bin/env python

max = 0 

num_list = [line.strip() for line in open("largest_product_in_a_series.dat")]
big_num = "".join(num_list)

for n in range(0,len(big_num)-4):
  total = 1
  print "n = %i" % n
  for i in (0,4):
    total = total * int(big_num[n + i])
    print "%i * %i" % (total , int(big_num[n + i]))
  if total > max:
    max = total

print max
