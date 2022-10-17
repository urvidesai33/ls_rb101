# Write a method that takes one argument, 
# a positive integer, 
# and returns the sum of its digits.

def sum(int)
  int.to_s.chars.map(&:to_i).sum
end
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts sum(3) == 3