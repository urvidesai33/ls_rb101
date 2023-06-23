def twice(int)
  result = 0
  num_string = int.to_s
  mid_index = num_string.size / 2
  p num1 = num_string[0...num_string.size / 2] # this works for single digit as we are not including the last number ... (could be a problem for single digit number if not careful)
  p num2 = num_string[num_string.size / 2 .. -1]
  
  if num1 == num2
    result = int
  else
    result = int * 2
  end
  result
end

##### LS SOLUTION #####
# def twice(number)
#   string_number = number.to_s
#   center = string_number.size / 2
#   left_side = center.zero? ? '' : string_number[0..center - 1] # see how to handle single digits
#   right_side = string_number[center..-1]

#   return number if left_side == right_side
#   return number * 2
# end
### END LS SOLUTION ###

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10