Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

```ruby
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
```

# Problem:
The method takes an array and a search value as arguments, and returns true if the search value is in the array and false if not.

Input: Array, Search Value
Output: Boolean (true or false)

## Rules: 
Explicit Rules: 
- Returns true if search value is in the input array
- Returns false if search value is not in the input array

Implicit Rules: 
- Returns `nil` if `nil` is in the input array
- Returns `false` if `nil` is not in the input array
- Returns `false` if array is empty

# Examples

include?([1,2,3,4,5], 3) == true => 3 is in the array, hence output is `true`
include?([1,2,3,4,5], 6) == false => 6 is not in the array, output is `false`
include?([], 3) == false => the array is empty, so there is nothing in the array, always `false`. 
include?([nil], nil) == true => `nil` is an object in the array, array is not empty
include?([], nil) == false => empty array, does not have any objects in it


# Data Structures
Array

# Algorithm

START METHOD DEFINITION include?(array, search_item)
  if array is empty return `false`
  else
  iterate through the all the elements in the array one at a time
    return true if current element matches the search item
  end if
END METHOD DEFINITION
 