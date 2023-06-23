Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:

```ruby
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
```

  # Problem

    Input: String
    Output: String - every character from original string is doubled

    Rules: Empty string is empty string

  # Examples
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

  # Data Structure
  Strings

  # Algorithm

  repeater(string)

  create empty string called doublestring
  iterate through the string one character at a time
    concatenate 2 of the character into doublestring
  END LOOP

  return doublestring as a string

  # Code