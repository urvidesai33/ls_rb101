Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Examples:
```ruby
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
```

# Problem

Input: String (minimum two words)
Output: String (second to last word)

Rules - 

# Examples

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

# Data Structures

Strings, Arrays

# Algorithm

penultimate(words)

turn string words into array of words
return the second to last word in the array. 

end

# Further Exploration

Our solution ignored a couple of edge cases because we explicitly stated that you didn't have to handle them: strings that contain just one word, and strings that contain no words.

Suppose we need a method that retrieves the middle word of a phrase/sentence. What edge cases need to be considered? How would you handle those edge cases without ignoring them? Write a method that returns the middle word of a phrase or sentence. It should handle all of the edge cases you thought of.

## Problem 
method that retrieves the middle word of a phrase or sentence. 

  - Edge cases: 
    - Even number of words
    - one word
    - no words

## Examples 
penultimate_2('last word') == ''
penultimate_2('Launch School is great!') == ''
penultimate_2('there are five words here') == 'five'
penultimate_2('word') == 'word'
penultimate_2('') == ''


## Algorithm

penultimate2(words)

take string of words and turn into array of words
find mid_index of array
return word at mid_index

if string is empty, return empty string
if array size is one (one word in string), return string
if there are even number of words return empty array