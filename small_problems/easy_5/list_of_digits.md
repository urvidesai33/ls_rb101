Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

## Problem
The method takes an integer as an argument, and returns the list of digits in that integer. 

Input: Positive Integer
Output: Array of Integers that make up the original Integer number

Implicit Rules:
- Return object is an Array of integers
- The list is arranged in order of appearance in the integer. 123 is listed as [1, 2, 3] in the output

## Examples
``` ruby
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
```


## Data Structures
Input is a Integer, and Output is an Array. 

# Algorithm

START
METHOD DEFINITION digit_list(integer)
  LOOP WHILE integer != 0
   INTEGER, REMAINDER = INTEGER.divmod(10)
   PUSH REMAINDER to END of ARRAY
  REPEAT
  RETURN ARRAY
END