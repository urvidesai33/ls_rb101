Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

Examples:
```ruby
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
```

# Problem
  Determine all the possible substrings of a given string. The substrings should all start at the beginning of the given string and all the letters should be in order. 

  Input: String
  Output: Array of Strings

# Examples
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Data Structure
Strings and Array

# Algorithm

leading_substrings('str')
initialize empty array to store the substrings

iterate through the string one character at a time
initialize an empty string
each time increment the length of the substring by one, 
and save the new substring into the array

Return the array of substrings

# Code