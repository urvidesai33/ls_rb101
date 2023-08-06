Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

Examples:

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

  # Problem
  Method should compute: 
   - square of the sum of the first n positive integers of the argument
   - sum of the square of each of the first n positive integers of the argument
   - calculate the difference between the two
   - output the difference

  # Examples
  sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
  sum_square_difference(10) == 2640
  # -> (1 + 2 + 3...10)^2 - (1^2 + 2^2 + 3^2...+ 10^2)
  sum_square_difference(1) == 0
  sum_square_difference(100) == 25164150  

  # Data Structure
  Range to count the first n integers of the argument


  # Algorithm
  
  - Find the sum of the first n numbers of the argument
    - square the sum
  - initialize a variable to calculate the squares
  - iterate through each integer upto n
    - square the integer
    - add it to the total
  - subtract total from the squared sum
  - output the difference

  # Code

  