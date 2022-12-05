# In the previous exercise, you developed a method that converts non-negative numbers 
# to strings. 
# In this exercise, you're going to extend that method 
# by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, 
# and converts it to a string representation.

# You may not use any of the standard conversion methods
#  available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. 
# You may, however, use integer_to_string from the previous exercise.


## Integer to String from previous exercise - LS version

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  p result
end

def signed_integer_to_string(num)
  if num.negative?
    num = -num
    integer_to_string(num).prepend('-')
  elsif num.positive?
    integer_to_string(num).prepend('+')
  else
    integer_to_string(num)
  end
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
