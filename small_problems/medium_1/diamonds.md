Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

Examples
diamond(1)

*

diamond(3)

 *
***
 *

 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *


  # Problem

  Input: odd integer
  Output: 4 pointed diamond with max width of input

  Rules: 
  - n x n diamond
  - assume n is odd


  # Examples
 See above

  # Data Structure
  Strings, arrays



  # Algorithm
  Shape consists of spaces " " and "*"
  n = odd number
  select odd numbers from 1..n odds -> [1, 3 , ..,n]
  
    
    create left, middle and right strings for each odd number
      iterate over the odds array on odd number at a time
        the number at every index of odds is the number *s to be printed
        concatenate the strings together
        if n is the last number create string with n x "*"s
        else
        1 * -> (n - 1 spaces) 1/2 on each side 
        3 *s -> (n - 3 spaces) 1/2 on each side
        5 *s -> (n - 5 spaces) 1/2 on each side
      ... n/2

      save the strings in a hash, where the key is the odd number, and the value is a of string corresponding to the odd number
  
  print top rows - ascending order of odds
    print the values of the hash
  print middle row
  print bottom rows - descending order of odds
    - reverse values of the hash and print
  
 


[1, 3, 5, 7,9]

 
    




  # Code