# Write a method that takes one argument, 
# a positive integer, 
# and returns the sum of its digits.

def sum(int)
  div = nil
  total = 0
  until int == 0 do
    total = total += int.divmod(10)[1]
    int = int.divmod(10)[0]
  end
  total
end
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45