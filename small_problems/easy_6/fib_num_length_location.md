
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)
You may assume that the argument is always greater than or equal to 2.

## Problem:

Method calculates and returns:
   - Index of the first Fib. number that has the number of digits indicated in the argument.
    - the first number of the series has Index = 1
  
  ### Rules: 
  Implicit Rules: N/A
  
  Assumptions: Argument is always greater than or equal to 2.


## Examples:



```ruby
find_fibonacci_index_by_length(2) == 7    
#The the index of the first number in the sequence that has 2 digits:      # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12   
#The index of the first number in the sequence that has 3 digits      # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
```

## Data Structures

Array to store the sequence of numbers


## Algorithm

START
METHOD DEFINITION find_fibonacci_index_by_length (num_of_digits)
  Initialiaze A Starting array with first 2 digits of sequence [1, 1]
  Set Index to 1
  ITERATE over Array 
    Value at (Index + 1) = Value at Index + Value at (index - 1)
    Increment Index by 1
  REPEAT until result has num_of_digits specified (length_match?)
  
  Get the Index in the Array of the last number calculated, and add 1 to it to get the Fibonacci Index
  Return the Fibonacci Index
  END METHOD DEFINITION

METHOD DEFINITION length_match? (result, num_of_digits)
  Check the length of the result against num_of_digits
  If they match then return TRUE
  END METHOD DEFINITION

END


