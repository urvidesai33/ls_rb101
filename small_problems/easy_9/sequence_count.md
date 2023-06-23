Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

Examples:
```ruby
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
```

  # Problem
  Input: 2 integers
  Output: array of integers

  ## Rules
  ### Explicit 
  - the array should contain same number of elements as count argument
  - values of the elements will be multiples of the starting number


  # Examples
  sequence(5, 1) == [1, 2, 3, 4, 5]
  count = 5, num = 1 => [1 * 1, 1* 2, 1 * 3, 1* 4, 1* 5] => [1, 2, 3, 4, 5]
  sequence(4, -7) == [-7, -14, -21, -28]
  sequence(3, 0) == [0, 0, 0]
  sequence(0, 1000000) == []

  # Data Structure
  Array


  # Algorithm
  sequence(count, num)
  initialize empty array 
  
  repeat count number of times
    num * (value of count at current iteration)
    append the result in an array
  END LOOP
  return array


  # Code