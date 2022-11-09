# In this exercise, you will write a method named xor 
# that takes two arguments, 
# and returns true if exactly one of its arguments is truthy, 
# false otherwise. 
# Note that we are looking for a boolean result
#  instead of a truthy/falsy value as returned by || and &&.

#  XOR truth table
#  1 XOR 1 = 0
#  1 XOR 0 = 1
#  0 XOR 1 = 1
#  0 XOR 0 = 0

def xor? (value1, value2)
 if value1 == value2
  false
 else
  true
 end

#  LS Solution - this solution is good for returning a boolean value no matter what value1, or value2 is (try nil)
# def xor?(value1, value2)
# !!((value1 && !value2) || (value2 && !value1))
# end

end



p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false