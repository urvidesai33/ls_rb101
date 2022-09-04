a = %w(a b c d e)
puts a.fetch(0) # =>IndexError, there are only 5 elements in the array
puts a.fetch(7, 'beats me')# will output 'beats me', since index is out of range
puts a.fetch(7) { |index| index**2 }# outputs 49, as the block only executes when the index is out of range