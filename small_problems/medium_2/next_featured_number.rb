# FEATURE_FACTOR = 7

# def featured(int)
#   closest_factor = int / 7
#   next_multiple_of_7 = (closest_factor + 1) * 7
#   if next_multiple_of_7.digits.size > 10 
#      return puts "There is no possible number that fulfills those requirements"
#   else
#     loop do
#       break if next_multiple_of_7.odd? && next_multiple_of_7.digits.uniq == next_multiple_of_7.digits
#       next_multiple_of_7 = next_multiple_of_7 += 7
#     end
#   end

#    p next_multiple_of_7
# end


### LS SOLUTION ####
def featured(number)
  number += 1 # need to add this 1 because if the orig. num already featured then it won't go to next
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end
####### END LS SOLUTION ######
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements