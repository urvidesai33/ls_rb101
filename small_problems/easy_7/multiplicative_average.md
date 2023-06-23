Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

Examples:
```ruby
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
```

# Problem
The method takes an array of numbers, and returns the average (multiply the numbers, divide by number of elements), rounded to 3 decimal places. 

Input: array of integers
Output: float upto 3 decimal points

Assume arrays are non-empty

Implicit Rules
  - a single integer in an array will generate an output of the same number but rounded to 3 decimal places.

# Examples

show_multiplicative_average([3, 5])                # => The result is 7.500
3 x 5 = 15. 15 ÷ 2 = 7.5 => 7.500

show_multiplicative_average([6])                   # => The result is 6.000
6 ÷ 1 = 6 => 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Data Structures
Integers, Arrays

# Algorithm

START METHOD DEFINITION show_multiplicative_average(num_array)
  initialize product = 1
  calculate product of elements in num_array
    iterate through the array one element at a time
      product = product x element
    end LOOP
  divisor = number of elements in num_array
  multi_avg = product converted to float / divisor converted to float

  round multi_avg to 3 decimal points

END METHOD DEFINTION