# Write a method that takes one argument, 
# a positive integer, 
# and returns a string of alternating 1s and 0s,
# always starting with 1. 
# The length of the string should match the given integer.

def stringy(number, start = '1')
  str = '10'
  str.reverse! if start == '0'

  if number.odd?
    str * (number / 2) + str[0]
  else
    str * (number / 2)
  end
  
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7, '1') == '1010101'
puts stringy(6, '0') == '010101'
puts stringy(9, '0') == "010101010"