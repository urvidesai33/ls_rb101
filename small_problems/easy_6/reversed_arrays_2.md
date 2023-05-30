Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

Examples:

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true


## Problem
- Method takes an array as an argument
- Returns a new array object with elements from the original array object arranged in reversed order

Inputs: 
Array

Outputs:
New Array with elements reversed

## Examples

Examples: 
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
 - different object_id for `list` and `new_list`

list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

## Data Structure

Arrays for input and output

## Algorithm

START
METHOD DEFINTION reverse(array)
  Initialize an empty array
  Iterate through the current array starting from the first index
    Copy  element from array 
    Add the copied element to the front of the new array
    
  Until end of current array is reached
END METHOD DEFITION
END
