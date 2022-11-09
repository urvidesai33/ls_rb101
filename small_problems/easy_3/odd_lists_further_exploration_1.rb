# Further Exploration

# Write a companion method that returns 
# the 2nd, 4th, 6th, and so on elements of an array.

# Try to solve this exercise in at least 2 additional way

def evens(array)
  even_elements = []
  index = 1
  while index < array.size
    even_elements << array[index]
    index += 2
  end

  p even_elements

end

p evens([2,4,6,8]) == [4,8]