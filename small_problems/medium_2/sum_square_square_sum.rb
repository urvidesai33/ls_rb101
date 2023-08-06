def sum_square_difference(int)
  nums = (1..int).to_a
  square_of_sum = (nums.reduce(:+)) ** 2

  sum_of_squares = 0
  nums.each { |n| sum_of_squares += n ** 2}
  
  square_of_sum - sum_of_squares
end


##### LAUNCH SCHOOL SOLUTION ####


# def sum_square_difference(n)
#   sum = 0
#   sum_of_squares = 0

#   1.upto(n) do |value|
#     sum += value
#     sum_of_squares += value**2
#   end

#   sum**2 - sum_of_squares
# end

#### END LAUNCH SCHOOL SOLUTION ####

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150