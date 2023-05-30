Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Examples:
```ruby
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
  ```

  Problem
  input - string
  output - string

  Explicit Rules: 
  Return middle character of string
  If string size is odd number then return 1 middle character
  If string size is even return 2 middle characters

  Data Structure: 
  Strings

  Algorithm

  Get size of string
  If string is odd
    divide size by 2 and return answer + 1
    elsif string isize is even
    divide size by 2 and return answer and answer + 1

    