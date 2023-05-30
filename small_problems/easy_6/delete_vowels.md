Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

Example:

```ruby
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
```

## Problem

Remove the vowels from each String in an Array of Strings. Return the modified Array.

### Rules
Implicit Rules: the returned strings should match the case of the original

## Examples
```ruby
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
```

## Data Structures

Need a reference String or Array containing vowels.

## Algorithm

START
REFERENCE STRING "AEIOUaeiou"
METHOD DEFINITION remove_vowels(array)
  ITERATE through the array one String at a time
    Compare each character in the Current String to the Reference String
    If any character matches delete it from the current String
  REPEAT
  Return the modified ARRAY
END
END