Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.


```ruby
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
```


# Problem

Input: 2 arrays with integer elements
Output: 1 new array containing th product of every possible pair of numbers from the 2 input arrays sorted in ascending order

Assumptions: arrays are never empty


# Example

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
2 x 4, 2 x 3, 2 x 1, 2 x 2
4 x 4, 4 x 3, 4 x 1, 4 x 2

# Data Structure

Arrays

# Algorithm

START METHOD DEFINITION multiply_all_pairs(arr1, arr2)

initialize an array to store results = []

multiply every each element in first array with every element in second array
- LOOP through the first array, 
- - LOOP through second array
- multiply element from first with every element in second
- Store product in results array
- REPEAT for every element in the first array
- END LOOP`

Sort the result array in ascending order
Return the sorted results array
END METHOD DEFINITION

