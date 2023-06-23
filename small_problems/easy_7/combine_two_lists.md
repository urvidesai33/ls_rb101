Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Example:
```ruby
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
```

# Problem
The method should take two arrays as arguments, and return an array that that has the contents of both arrays interleaved (alternating).

Assumptions: 
- both arrays are non-empty
- both arrays are the same size

Input: two arrays of the same size
Output: one array with the contents of the input arrays in alternating order

Implicit Rules: none

# Examples

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


# Data Structures

Array

# Algorithm

START METHOD DEFINITION interleave(arr1, arr2)
  intialize output array - output_array
  initialize index to 0
  Start a loop
    Iterate through arr1 and arr2
    Insert the element at index of arr1, into output_array
    Insert the elemenet at index of arr2, into output_array
  Until last element (array size - 1)
  end loops
  return output_array
END METHOD DEFINITION


