Write a method that can rotate the last n digits of a number. For example
```ruby
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
```
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

  # Problem
  Input: integer (number to be rotated), integer(number of times to rotate)
  Output: integer

  ## Rules
  - rotate the last n digits of a number - only rotate the digits taking up the last n positions in the number, where n is the second argument
  - when n = 1, the original number is returned
  - assumption: n is positive


  # Examples
  rotate_rightmost_digits(735291, 1) == 735291 -> original number returned
  rotate_rightmost_digits(735291, 2) == 735219 -> last 2 rotated 91 -> 19
  rotate_rightmost_digits(735291, 3) == 735912 -> last 3 digits rotated 291 -> 912
  rotate_rightmost_digits(735291, 4) == 732915
  rotate_rightmost_digits(735291, 5) == 752913
  rotate_rightmost_digits(735291, 6) == 352917


  # Data Structure
  Strings and arrays


  # Algorithm
  rotate_rightmost_digit(int, last_digits)
  - turn int into a string
    - split into two strings, one that will be rotated which has the last_digits, and the other will stay the same 
  - rotate the part of the string that needs to be rotated
  - add the rotated digits and add them back to the remaining string that was not rotated
  - return the new integer


  # Code