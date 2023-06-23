Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:
``` ruby
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
```

  # Problem
  Input - String
  Output - String 

  Rules: 
  Explicit: only letters that are consonants should be doubled, all other characters including vowels should not be doubled


  # Examples
  double_consonants('String') == "SSttrrinngg"
  double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
  double_consonants("July 4th") == "JJullyy 4tthh"
  double_consonants('') == ""

  # Data Structure
  String, Reference String for consonants

  # Algorithm
  double_consonants(string)
  create an empty string called new_string
  create a reference string of consonants
  iterate through the original string one character at a time
    if the character is consonant double it and concatenate to new_string
    else concatenate the character as is to the new_string
  END LOOP

  return the new_string


  # Code