Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

Examples:
``` ruby
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby
```

Problem:

Input: integer
Output: negative of the integer or 0

Explicit Rules: 
1. Return the negative of the integer, if it's positive return the negative, if negative, return the same number, and if 0 return 0

Data Structures:
Integers

Algorithm:

Input an Integer
Check if the integer is negative
If it is negative, return the same number
If it is positive, return the negative of the number
If it is 0, then return 0

