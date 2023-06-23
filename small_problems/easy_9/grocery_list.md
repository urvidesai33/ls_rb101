Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

Example:

```ruby
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
```
  # Problem
  Input: Array of arrays, sub array has a string and an integer
  Output: Array of strings

  ## Rules
  - output the string in the sub array, number amount of times, into a one dimensional array


  # Examples
  buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

  # Data Structure
  Array


  # Algorithm
  buy_fruit[fruit_array]
  initialize empty array 
  fruit array contains sub arrays of strings and numbers.
  the number is the quantity of the fruit string required
  Iterate through the array, one subarray at a time
    multiply the string at index 0 number (index 1) times
    save the result in a new array
  END

  # Code