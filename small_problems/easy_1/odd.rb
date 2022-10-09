# Problem:
# A method that takes one integer argument
# - the integer argument may be +ve, -ve or 0
# - returns true if the integer's the absolute value is odd
# 
# Input: Integer +ve, -ve or 0
# Output: True or False 
#
# Rules: 
# Explicit: 
# 1. Input must be an integer +ve, -ve or 0
# 2. Must return true if the absolute value of the integer is odd
# Implicit: 
# 1. Assume argument is valid integer value
# 2. Zero is not odd, and method must return <false> for this value
# 
# Data Structures: integers and boolean, no other data structures required
#
# Algorithm: 
# 
# 1. if the integer value modulus by 2 is 0 return false
# 2. if the integer value modulus by 2 is not equal to 0 return true

def is_odd?(number)
  number % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# modulo will always return positive number if the divider (number on right) is also positive
# Ruby also has Integer#remainder method whose answer is a bit different

# def is_odd?(number)
#   number % 2 == 1
# end