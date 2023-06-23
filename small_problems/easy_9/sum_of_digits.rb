# def sum(num)
#   sum_digits = num.to_s.chars.map { |n| n.to_i }.reduce(:+)

# end

##### LS SOLUTION #####
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end
#### END LS SOLUTION ####

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45