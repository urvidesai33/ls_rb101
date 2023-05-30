Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

```ruby
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
```

## Problem: 

**Input**: String 
**Output**: Boolean

**Explicit rules**: Ignore non-alphabetical characters, ie. numbers, symbols, spaces
**Implicit rules**: Blanks should be ignored, empty strings should be ignored. ie - return true

## Examples:

```ruby
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
```

## Data Structures: 

The input DS is a String. Continue to work with String throughout the program. 

## Algorithm
```PSEUDOCODE
START
METHOD DEFINION uppercase (STRING)
      IF ANY ASCII of CHARS in STRING are BETWEEN 97 and 122 RETURN FALSE
      ELSE
      RETURN TRUE
END METHOD DEFINITION
END
 
# Further Exploration

Food for thought: in our examples, we show that uppercase? should return true if the argument is an empty string. Would it make sense to return false instead? Why or why not?

Returning `true` for empty string is entirely dependent on the requirements of the program. If the goal is to only look out for lowercase then it makes sense to return `true`. 
However, if the goal of the program is to return true stricly for strings that are not empty and have uppercase letters in it, then `false` would be a more appropriate return value.