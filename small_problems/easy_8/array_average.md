Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

Don't use the Array#sum method for your solution - see if you can solve this problem using iteration more directly.

Examples:
```ruby
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
```

  # Problem
  Input: array of integers
  Output: integer

  ## Rules
  ### Explicit
  - return the average of the numbers in the array
  - array will neer be empty and numbers are always positive integers

  # Examples
  puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
  puts average([1, 5, 87, 45, 8, 8]) == 25
  puts average([9, 47, 23, 95, 16, 52]) == 40

  # Data Structure
  arrays

  # Algorithm

  average(integers)
 - calculate the average of the integers in the array
  - add up all the numbers in array
  - divide the total by the number of elements
 - return the average calculated
 


  # Code

  # Further Exploration

Currently, the return value of average is an Integer. When dividing numbers, sometimes the quotient isn't a whole number, therefore, it might make more sense to return a Float. Can you change the return value of average from an Integer to a Float?