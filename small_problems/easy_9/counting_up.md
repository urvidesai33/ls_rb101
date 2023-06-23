Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:
```ruby
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
```
  # Problem
  Input: integer
  Ouptut: array of integers

  Rules: The output is an array of all integers in sequence between 1 and the input


  # Examples

  sequence(5) == [1, 2, 3, 4, 5]
  sequence(3) == [1, 2, 3]
  sequence(1) == [1]
  # Data Structure
  array

  # Algorithm
  sequence(num)
  - create a range starting from 1 and ending at num
  - turn the range into an array

  # Code

# Further Exploration

Food for thought: what do you think sequence should return if the argument is not greater than 0. For instance, what should you do if the argument is -1? Can you alter your method to handle this case?