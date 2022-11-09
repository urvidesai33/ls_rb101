# Further Exploration

# Write a companion method that returns 
# the 2nd, 4th, 6th, and so on elements of an array.

# Try to solve this exercise in at least 2 additional way

def evens(array)
  even_elements = []
  array.each_with_index do |element, i|
    even_elements << element if i.odd?
  end
  even_elements
end

p evens([1,3,4,5,5]) == [3,5]
p evens([1, 2, 3, 4, 5, 6]) == [2,4,6]