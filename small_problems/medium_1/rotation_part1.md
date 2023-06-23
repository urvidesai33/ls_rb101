Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:

```ruby
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
```

  # Problem
  Input - array
  Output - new array

  ## Rules 
  - the array is rotated by moving the first element to the end of the array, and all other elements moving backwards
  - the index of the elements all shifts by -1
  - the original array is unchanged

  # Examples
  rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
  index[0]-> index[-1], index[1] -> index[0] ...
  rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
  rotate_array(['a']) == ['a']

  x = [1, 2, 3, 4]
  rotate_array(x) == [2, 3, 4, 1]   # => true
  x == [1, 2, 3, 4]                 # => true


  # Data Structure
  Arrays


  # Algorithm
  rotate_array(array)
  - iterate over array one element at a time
    -  copy element at index in current array  to index - 1 in new array
  - repeat for every element
  - return new array





  # Code

  # Further Exploration

Write a method that rotates a string instead of an array. Do the same thing for integers. You may use rotate_array from inside your new method.