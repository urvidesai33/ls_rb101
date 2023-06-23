Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

Examples:

```ruby
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
```

# Problem
Input is an array of numbers. The method then calculates the sum of each subset of numbers in order (do not mix up the numbers) =>[3, 5, 2] => 3 + (3+5) + (3+5+2). The return value of the method is the sum.

Input: Array
Output: Integer

Rules 
  -Explicit - array always contains at least one number




# Examples
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

# Data Structure
Arrays

# Algorithm

START sum_of_sums(num_array)

Initialize empty array for sub sums
intialize sub_sum to 0
Calculate individual sums,
   starting at index 0, add first number to sub_sum
   save sub_sum to array
   Take the number at that index, and add it sub_sum
   save the new sub_sum to the array
Repeat until reach the end of the array

Return the last of subsums from sumarray

# Code