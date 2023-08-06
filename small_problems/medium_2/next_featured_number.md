A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

Examples:
```ruby
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
```

  # Problem

  Input: Integer
  Output: Integer

  The method returns the next featured number that is greater than the argument.
  Rules: 
  - a featured number is an odd number that is a multiple of 7 
  - the digits occur only once in the featured number
  - if there is no next featured number return an error message

  # Examples
featured(12) == 21 
 --> 12, 14, 21 (21 is odd, multiple of 7 and has unique digits)
featured(20) == 21
featured(21) == 35 (3*7 = 21, 4 * 7 = 28, 5 * 7 = 35)
featured(997) == 1029 
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements 
  ==> if the next multiple is larger than 10 digits long, then there is no possible number.

  # Data Structure


  # Algorithm
  current_number
  next_number

  Find the closest factor - current/7 + 1
  next number is closest factor * 7
    check if it is a featured number
      - is the number odd and are all digits unique?
      if it is return the number
      
    else find the next number -> closest factor + 1 * 7
  repeat until featured number is found


 # Scratchpad
  to check if all digits are unique: 

  arr.uniq == arr
    if true, all digits are unique
    else there are repeats
    
  # Code

  