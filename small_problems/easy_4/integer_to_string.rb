# In the previous two exercises,
#  you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, 
# and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby,
#  such as Integer#to_s, String(), Kernel#format, etc. 
# Your method should do this the old-fashioned way and construct the string
#  by analyzing and manipulating the number.

DIGITS = { '0' => 0, "1" => 1, '2' => 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9}
INT_DIGITS = DIGITS.invert
p INT_DIGITS

def number_of_digits(num)
  counter = 0 
  while num > 0 do
    num /= 10
    counter += 1
  end
    # counter = 1 if num == 0
  
  counter
end

def digit_list(num)
  digit_count = number_of_digits(num)
  place_value = digit_count - 1
  digits = []
  remainder = num
  while remainder > 0 || digits.size != digit_count
    result = remainder / (10 ** place_value)
    remainder %= (10 ** place_value)
    digits << result
    place_value -= 1
  end
   digits << num if num == 0
  
  digits
end

def integer_to_string(int)
   array_of_digits = digit_list(int)
   string_number = ''
   array_of_digits.each do |digit|
     string_number += INT_DIGITS[digit]
   end
   string_number
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
p integer_to_string(3) == '3'