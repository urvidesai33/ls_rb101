Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

Examples: 
``` ruby
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
```
# Problem: 
The method takes one array as an argument. The return value is a nested array containing 2 sub arrays, each sub array has half the elements from the original array (1st subarray has 1st half, 2nd subarray has 2nd half).
If there are an odd number of elements in the original array, then the middle element should be included in the 1st subarray. 

Input: Array
Ouptut: Nested array containing to sub arrays

Explicit Rules: 
- If odd number of elements in orginal array, then mid element is output in the 1st subarray of the output array

Implicit Rules: 
- An Empty Input array should output two empty subarrays.
- An input array with just one element, should output 1st subarray with the element and 2nd subarray is empty. 


# Examples: 
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] => Even number of elements split evenly
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] => Odd number of elements, mid element is included in the first sub array
halvsies([5]) == [[5], []] => Only one element, second output subarray is empty
halvsies([]) == [[], []] => Empty input array, two empty output subarrays

# Data Structures: 
Arrays for input and output

# Algorithm

START METHOD DEFINITON halvsies(array)
  First Determine the Size of array
  Initialize output_array that contains two empty sub arrays, array1 and array2

  If Size is even?
    Iterate over the array from index 0 to index (size/2 - 1) and save those elements in array 1
    Iterate over the array from index (size/2 to size - 1) and save those elements in array2
  If size is odd? 
    Iterate over the array from index 0 to index(size/2) and save those to array1
    Iterate over the array from index (size/2 + 1 to size - 1) and save those elements in array 2
  Endif

  END METHOD DEFINITION