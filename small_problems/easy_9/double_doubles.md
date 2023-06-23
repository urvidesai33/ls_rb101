A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

Examples:
```ruby
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
```


Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; however, it does not print the underscores when printing long numbers. Don't be alarmed if you don't see the underscores when running your tests.

  # Problem

Input: integer
Output: integer

  ## Rules
  ### Explicit: 
  - If double number it should be output as is
    - a double number is one htat has even number of integers and is the same from left to right when cut in half, down the middle. 
  - If it's not a double number the output is the product when multiplied by 2

  # Examples
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

  # Data Structure
Integers, Arrays, Strings

  # Algorithm

twice(int)
- initialize result 
- turn int into a string
- check if there are even number of characters in the string
  - if there are odd then return the result of number * 2
  - it there are an even number then
    - find the number occuring twice
      - find the middle index (size/2)
      - first number is from 0 to (size/2 - 1)
      - second number is from size/2 to last
    - if both the numbers match, then return the orig. number as is
    - if the two numbers don't match then multiply orig. number by 2 and return it
- return the number as an integer

  # Code