Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

Examples:
```ruby
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
```

  # Problem
  Input: array
  Output: array

  ## Rules
  - the elements in the output array are the ones occuring at the even index of the input array


  # Examples
  oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
    index 0 -> 2, index 2 -> 4, index 4 -> 6
  oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
    index 0 -> 1, index 2 -> 3, index 4 -> 5
  oddities(['abc', 'def']) == ['abc']
  oddities([123]) == [123]
  oddities([]) == []
  oddities([1, 2, 3, 4, 1]) == [1, 3, 1]


  # Data Structure
  array

  # Algorithm
  oddities(array)
  - initalize output_array
  - iterate through the array 
    if the index is even save the element in the output array
  return the output array


  # Code

  
# Further Exploration

Write a companion method that returns the 2nd, 4th, 6th, and so on elements of an array.

Try to solve this exercise in at least 2 additional ways.