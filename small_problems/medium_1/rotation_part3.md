If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Example:
```ruby
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
```


  # Problem
  - Input - Integer
  - Output - Integer
  ### Rules 
  - Rotate the number as many times as there are digits - 1, while keeping the first n digits in place 
  - the output is the max rotation number
  - leading 0s will be dropped


  # Examples
  max_rotation(735291) == 321579
  rotation 1 (keep 0 digits in place) -> 352917
  rotation 2  (keep 1 digit in place) -> 329175
  rotation 3 (keep 2 digits in place) -> 321759
  rotation 4 (keep 3 digits in place) -> 321597
  rotation 5 (keep 4 digits in place) -> 321579

  max_rotation(3) == 3
  max_rotation(35) == 53
  max_rotation(105) == 15 # the leading zero gets dropped
  max_rotation(8_703_529_146) == 7_321_609_845


  # Data Structure
  Strings, Arrays




  # Algorithm
  max_rotation(int)
  - determine max of rotations 
    - turn int into string
    - size of string
    - max # = size of string - 1
  - repeat max times
    - rotate string
    - determine new string to rotate
    - create new full string
    - repeat until max # is reached
  return the max rotated integer


  # Code