#!/usr/bin/env ruby


# Problem 11 from projecteuler.net
#
# In the 20×20 @matrix in largest_product_in_a_matrix.dat, four numbers along a
# diagonal line have  a product of 26 × 63 × 78 × 14 = 1788696.
# 
# What is the greatest product of four adjacent numbers in the same direction
# (up, down, left, right, or diagonally) in the 20×20 @matrix?
#

class Grid
  
  attr_reader :max_num

  def initialize
    f = File.open($0[/(.*)\..*/,1] + ".dat", "r")
    
    @matrix = Array.new(20) {Array.new(20)}
    
    ctr=0
    f.each do |line|
      @matrix[ctr] = line.split
      #puts "matrix[#{ctr}] #{matrix[ctr].join(" ")}"
      ctr += 1
    end
    
    row_size = @matrix.size
    col_size = @matrix[0].size
    
    @max_num = 0
    
    puts "{row_size} = #{row_size}" 
    puts "{col_size} = #{col_size}" 
    puts "{max_num} = #{@max_num}" 
  end
     
  def row_size
    @matrix.size
  end

  def col_size
    @matrix[0].size
  end

  def new_max? num
    num = num.to_i
    puts "Checking #{num} against #{@max_num}"
    @max_num = num if num > @max_num
    puts "Max = #{@max_num}"
  end
  
  def mult_down row, col
    total = 1
    row.upto(row + 3) do |n|
      #print "#{@matrix[n][col]} "
      total *= @matrix[n][col].to_i
    end
    puts
    new_max? total 
  end
  
  def mult_up row, col
    total = 1
    row.downto(row - 3) do |n|
      #print "#{@matrix[n][col]} "
      total *= @matrix[n][col].to_i
    end
    new_max? total 
  end
  
  def mult_right row, col
    total = 1
    col.upto(col + 3) do |n|
      #print "#{@matrix[row][n]} "
      total *= @matrix[row][n].to_i
    end
    new_max? total 
  end
  
  def mult_left row, col
    total = 1
    col.upto(col + 3) do |n|
      #print "#{@matrix[row][n]} "
      total *= @matrix[row][n].to_i
    end
    new_max? total 
  end
  
  def mult_diag_up_left row, col
    total = 1
    0.upto(3) do |n|
      #print "#{@matrix[row - n][col - n]} "
      total *= @matrix[row - n][col - n].to_i
    end
    new_max? total 
  end
  
  def mult_diag_up_right row, col
    total = 1
    0.upto(3) do |n|
      #print "#{@matrix[row + n][col - n]} "
      total *= @matrix[row + n][col - n].to_i
    end
    new_max? total 
  end
   
  def mult_diag_down_right row, col
    total = 1
    0.upto(3) do |n|
      #print "#{@matrix[row + n][col + n]} "
      total *= @matrix[row + n][col + n].to_i
    end
    new_max? total 
  end
  
  def mult_diag_down_left row, col
    total = 1
    0.upto(3) do |n|
      #print "#{@matrix[row - n][col + n]} "
      total *= @matrix[row - n][col + n].to_i
    end
    new_max? total 
  end

  
  def loop_through_grid
    
    row_ctr = 0
    while row_ctr < row_size
      col_ctr = 0
      while col_ctr < col_size
        if row_ctr < 17
          mult_down row_ctr, col_ctr
        end
        if col_ctr < 17
          mult_right row_ctr, col_ctr
        end
        if row_ctr > 2
          mult_up row_ctr, col_ctr
        end
        if col_ctr > 2
          mult_left row_ctr, col_ctr
        end
        if col_ctr > 2 and row_ctr > 2
          mult_diag_up_left row_ctr, col_ctr
        end
        if col_ctr < 17 and row_ctr < 17
          mult_diag_down_right row_ctr, col_ctr
        end
        if col_ctr > 2 and row_ctr < 17
          mult_diag_up_right row_ctr, col_ctr
        end
        if col_ctr < 2 and row_ctr < 17
          mult_diag_down_left row_ctr, col_ctr
        end
        puts "col_ctr = #{col_ctr}"
        col_ctr += 1
      end
      puts "row_ctr = #{row_ctr}"
      row_ctr += 1
    end
  
  end # loop_through grid
end # end of Grid class

g = Grid.new()
g.loop_through_grid

puts g.max_num
