Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:

```ruby
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
```
  # Problem
Sequence of numbers, starting number and ending number. within the sequence replace all divisible by 3 with 'fizz', all divisible by 5 with 'buzz', and all divisible by both with 'fizzbuzz'

Input: 2 integers
Output: numbers and strings to the terminal

  # Examples

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

3 divisible by 3  -> Fizz
5 divisible by 5 -> Buzz
...
15 divisible by 3 and 5 -> FizzBuzz

  # Data Structure

  Strings


  # Algorithm

  fizzbuzz(int1, int2)

  create a range of numbers starting from int1 and ending at int2
  iterate through each number in the range 1 integer at a time
     if the number is divisible by 3 AND 5 print it out "fizzbuzz"
     elsif the number is divisible by 5 print out "buzz"
     elsif the number is divisible by 3 print out "fizz"
     else print the number as is
  END LOOP
  


  # Code
