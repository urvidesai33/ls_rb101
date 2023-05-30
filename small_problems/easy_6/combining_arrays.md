Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

Example: 

```ruby

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
```

# Problem:

Take two arrays as arguments.
Return one array, containing all the values of the two merged arrays, but removing any duplicates. 

Input: 2 arrays
Output: 1 array with all unique elements.

Rules: 
Implicit Rules 
- The output array should be a one dimensional array.
- The output array is arranged in ascending order

# Examples: 

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

[1, 3, 5] + [3, 6, 9] => [1, 3, 3, 5, 6, 9] => [1, 3, 5, 6, 9]

# Data Structures: 
Arrays for input and output

# Algorithm

START METHOD DEFINITION merge(array1, array2)
  Combine array 1 and array 2 
  Remove any duplicates
  Arrange in ascending order
  Return the merged array
END METHOD DEFINITION