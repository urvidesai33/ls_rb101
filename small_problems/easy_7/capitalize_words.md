Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.
```ruby
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
```

# Problem

The method should take the string argument and capitalize every word in the argument (word starts with a capital letter). Return the updated string.

Input: String
Output: String with all the words capitalized

## Rules

Implicit Rules
- any words that are in quotes should not be capitalized.
- word should start with a capital letter, and remaining letters should be lowercase

# Examples

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Data Structure

Strings (maybe an array)

# Algorithm

START METHOD DEFINITION word_cap(string)
  Turn the string into an array, ignoring the spaces
  Initialize a new array for capitalized strings
  Iterate through the string array, one string at a time
    IF the string starts with a quote make no changes to the string and save it into the new array
    ELSE
    capitalize the string and save the capitalized string into the new array
    ENDIF
  END LOOP
  Turn the new array of strings into a string 
  Return string
END METHOD DEFINITION


# Further Exploration

Ruby conveniently provides the String#capitalize method to capitalize strings. Without that method, how would you solve this problem? Try to come up with at least two solutions.


## Algorithm 1

START METHOD DEFINITION word_cap(sentence)
  words = sentence.downcase.split
  capitalized_words = []

  LOOP through words one word at a time
    IF word starts with '"' then push it to capitalized words
    ELSE  upcase the first char of the word
      split the word into an array of letters
      destructively uppercase the first element of the array
      join the letters to form the word    
     then push it to capitalized_words array
    ENDIF
  END LOOP

  turn capitalized words array into string with each word separated by a space  

  ## Algorithm 2

  START METHOD DEFINITION word_cap(sentence)
  
    Set a reference string of all the lowercase letters
    Initialize an empty String
    
    Iterate through the sentence one character at a time
      IF the character is in the reference string and has index 0 capitalize it and save it to the same index in the empty string
      ELSE the character follows a space and is in the reference string capitalize it and save it to the same index in the empty string
      ENDIF
    ENDLOOP
  
  END METHOD DEFINITION