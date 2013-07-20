#!/usr/bin/ruby

string = "1234567890"

def reverse_it str
  arr = str.split(//)
  0.upto(arr.size()/2) do |n|
    puts "#{arr[-n -1]} #{arr[n]}"
    arr[n], arr[-n -1] = arr[-n -1], arr[n]
  end
  puts arr.inspect
end

reverse_it string

