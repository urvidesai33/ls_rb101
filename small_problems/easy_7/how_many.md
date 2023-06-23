How Many

Write a method that counts the number of occurrences of each element in a given array

```ruby
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
count_occurrences(vehicles)
```

The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2


# Problem

Input: array of strings
output: hash - key is string, value is number of occurrences of that string

the strings are case-sensitive



# Examples
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# Data Structures

Array, and Hash

# Algorithm

count_occurrences(array)
  make a new array containing every unique element in orig. array
  make a new hash that has the uniq elements from new array as keys, initialize all values to 0

  iterate through the uniq array one element at a time,
   get a count for the number of occurrences of that element in the orig. array
  save the account as a value for the relevant key

  output the hash


