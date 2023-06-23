Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples:

```ruby
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
```
# Problem
  Input: string
  Output: array of sub strings derived from string

  Rules: 
  Explicit
  - ordered from beginning of string, shortest to longest, followed by substrings starting with the next character etc. 
  -Implicit: 
  - none


# Examples
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# Data Structure
String and Array

# Algorithm
substrings(str)

initialize empty array to store substrings

Iterate through the string, one character at a time
get all the substrings that start with the current character, shortest to longest and store them in array.
Repeat with next character

Return array of substrings

# Code