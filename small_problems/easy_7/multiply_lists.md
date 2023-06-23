Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

Examples:

```ruby
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
```

# Problem

Input: 2 array arguments, assume they have the same number of elements
Output: new array, containing the product of the numbers from the arguments with the same index. 


# Examples
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

arr1[0] x arr2[0] = 27
arr1[1] x arr2[1] = 50
.
.


# Data Structures
Array

# Algorithm

START METHOD DEFINITION multiply_lists(arr1, arr2)
  create a new empty array - products
  intialize variable index = 0

  iterate through both the arrays simultaneously (both array are at the same index at the same time)
    multiply the numbers at index
    save the result into products
  END LOOP

  return products
END METHOD DEFINITION


Further Exploration

The Array#zip method can be used to produce an extremely compact solution to this method. Read the documentation for zip, and see if you can come up with a one line solution (not counting the def and end lines).