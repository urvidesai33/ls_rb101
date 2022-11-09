# Using the multiply method from the "Multiplying Two Numbers" problem,
#  write a method that computes the square of its argument (the square is the result of multiplying a number by itself).


# Further Exploration
# What if we wanted to generalize this method to a "power to the n" type method:
#  cubed, to the 4th power, to the 5th, etc.
#  How would we go about doing so while still using the multiply method?


def power(num, exponent)
  num1 = num
  while exponent > 1 do
    num = multiply(num1, num)
    exponent -= 1
  end
  num
end

def multiply(num1, num2)
  num1 * num2
end

p power(5, 2 )== 25
p power(3, 3 ) == 27
p power(2, 4) == 16