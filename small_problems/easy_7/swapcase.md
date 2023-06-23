Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:

```ruby
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
```

# Problem: 

Takes a string as an input, outputs a new string with the cases reversed.

Input: String
output: NEW String with cases reversed

# Examples

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Datastructures

Strings and Arrays

# Algorithm

START METHOD DEFINITION swapcase(string)
create a reference array of small letters
create a reference array of capital letters
initialize new string

LOOP through the string
  IF the character is in the small letters, upcase it and save it in the new string
  ELSIF the character is in capital letters, downcase it and save it in the new string
  ELSE save the character in the new string
  ENDIF
ENDLOOP
return new string


END METHOD DEFINITION