Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Examples:
```ruby
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

```

## Problem

Method that: 
- Takes an array as an argument
- reverses the array
- returns the reversed array (same Array object)
- the order of the elements is reversed, not the element itself
- Empty array returns empty array

## Examples:

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true
 - Object Ids are identical - `list` and `result` should point to the same object
list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true
-`list` is mutated

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

## Data Structures

Arrays are input and the output of this problem.

## Algorithm

START
METHOD DEFINITION reverse!(array)
  Duplicate array (create an identical array object)
  Iterate over copy,
    MAP the values from the copy onto array in reverse order
  RETURN array
END METHOD DEFINITON
END