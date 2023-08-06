A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Examples
```ruby
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
```

  # Problem
  Determine if a word can be spelled with the given letter blocks. Return 'true' if possible else return 'false'.
  Rules: 
  - The word can only have one letter from each block
  - The letter can only occur once in the word
  

  # Examples
  block_word?('BATCH') == true
  block_word?('BUTCH') == false
  block_word?('jest') == true

  # Data Structure

  Strings, Hash for the blocks
  , Array

  # Algorithm

  Iterate over the letters in the word. 
    - start with first letter, 
    If any letter occurs twice in the word, return false
      - iterate through each letter in the array, and compare it to the remaining letters of the array. 
      - if the letter is in the remaining part of the array return false
  
 
  OR

  If a letter occurs in the word that is in the same pair as another letter, return false
    - compare the letter with the current letter, and check if it's in the same group
      - check if the letter being compared is the key OR value of the current letter
    - return false if yes
 
 Repeat until end of word is reached
  Else return true

  # Code