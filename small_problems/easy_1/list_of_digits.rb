# Problem: 
# 1. Takes one argument
# 2. The argument is a positive integer
# 3. Returns a list of digits in the number

# Inputs: a positive integer
# Outputs: an array of digits in the integer
#
# Rules: 
# Explicit: 
# 1. Integer must be a positive number
# 2. There is no max.
# Implicit:
# 1. List is an array of digits
# 2. Assume all imput is valid
# 
# Algorithm: 
# 1. Determine all digits in the number
#   - determine highest place value (number of digits)
#   - determine digits in each place value 
# 2. Place each digit in array
# 3. Ouptut the array
#
# ** Algorithim Notes: 
#   How do you determine highest place value (number of digits)?
#    - divide integer by 10 until the result is less than 1
#    - increment a counter after each divide by 10
#
#   How do you determine the digit in each place value?
#   - find out the number of digits
#   - subtract 1 from number of digits to get place value
#   - divide integer by 10^(place value)
#   - divide remainder by 10^(place value - 1)
#   - repeat above step until remainder is less than 1
#
# Walk through example: 
# 12345 -> first place:1   Remainder: 2345
# 2345 -> second place: 2 Remainder: 345
# 345 ->  third place: 3 Remainder: 45
# 45 --> fourth place: 4 Remainder: 5
# 5 ---> fifth place: 5 remainder: 0 

def number_of_digits(num)
  counter = 0 
  while num > 0 do
    num /= 10
    counter += 1
  end
   p counter
end

def digit_list(num)
  digit_count = number_of_digits(num)
  place_value = digit_count - 1
  digits = []
  remainder = num
  while remainder > 1 || digits.size != digit_count
    result = remainder / (10 ** place_value)
    remainder %= (10 ** place_value)
    digits << result
    place_value -= 1
  end
  p digits
  digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
