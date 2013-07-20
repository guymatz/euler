#!/usr/bin/env ruby


# Problem 13 from projecteuler.net
#
# Work out the first ten digits of the sum of the following
# one-hundred 50-digit numbers

class Grid
  
  attr_reader :max_num

  def initialize
    f = File.open($0[/(.*)\..*/,1] + ".dat", "r")
    
    @matrix = Array.new(100) {Array.new(50)}
    @total_array = Array.new(50)
    
    ctr=0
    f.each do |line|
      line.chop!
      @matrix[ctr] = line.split(//)
      #puts "matrix[#{ctr}] #{matrix[ctr].join(" ")}"
      ctr += 1
    end
    
  end
     
  def add_columns_in_grid
    col_size = @matrix[0].size - 1
    row_size = @matrix.size - 1
    col_size.downto(0) do |col|
      @total_array[col] = 0
      row_size.downto(0) do |row|
        #puts "Adding #{@matrix[row][col].to_i} to #{total_array[col]} [#{col}][#{row}]"
        @total_array[col] += @matrix[row][col].to_i
      end
      #puts "Total For col #{col} = #{@total_array[col]}"
    end
  end

  def add_rows
    remainder = 0
    (@total_array.size() -1).downto(0) do |n|
      total = @total_array[n] + remainder
      @total_array[n+1] = total % 10
      remainder = total / 10
      puts "#{remainder} #{@total_array[n]}"
    end
    @total_array[0] = remainder
  end

  def display
    0.upto(@total_array.size() -1) do |n|
      print "#{@total_array[n]}"
    end
  end

end
  
g = Grid.new()
g.add_columns_in_grid
g.add_rows
g.display
