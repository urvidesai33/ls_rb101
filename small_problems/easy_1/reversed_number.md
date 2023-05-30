Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

```ruby
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
```
Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

Problem: 
Inputs: integer
Output: integer
Explicit rules: 
1. the output is the digits in reverse order of the input

Implicit Rules:
1. ignore leading 0s in input and ouptut.

Examples: 
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

Data Structure:
Use an array to transition from input to output. 

Aglorithm

Input a Number
Turn the number into an Array
Reverse the array, and join the digits back to form the number
