Given the array...

```ruby
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
```

Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

```ruby
["demo", "dome", "mode"]
["neon", "none"]
#(etc)
```

  # Problem
  Input: array
  Output: array

  ## Rules: 
  ### Explicit
  - the output arrays will contain a subset of words from the input array
  #### Implicit
  - each output array has is unique (ie does not have the same elements in it as another array)

  # Examples
  See above

  # Data Structure
  Array

  # Algorithm

  anagrams(word_array)

  create an empty array called anagrams
  iterate through the word_array, look at the current word and save it in a new subarray in anagrams
    loop through the remaining words in the word_array, and save any words that have the same letters as the current word in the sub array
  repeat with next word in word_array

  return the anagrams array

  # Code