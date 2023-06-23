Write a method that takes one argument, a positive integer, and returns the sum of its digits.

Examples:
```ruby
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
```
The tests above should print true.

For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

  # Problem
  Input: Integer
  Output: integer

  ## Rules
  - the output is the sum of the digits in the input


  # Examples
  puts sum(23) == 5
    23 --> 2, 3 --> 2 + 3 => 5
  puts sum(496) == 19
  puts sum(123_456_789) == 45

  # Data Structure
  Strings

  # Algorithm
  sum(num)

  - split num into it's digits
    - turn num into a string
    - separate the string into it's individual characters
    - turn the characters into integers
  - add all the digits together

  # Code

  