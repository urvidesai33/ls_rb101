Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

Example:
```ruby
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
```

# Problem

The method takes a String as an argument. The method returns a new string which is the original string, with every other character capitalized. All remaining characters are lowercase, and characters that are not letters are left alone.

Input: String
Output: new string with every other character capitalized

## Rules: 
- only letters are capitalized
- characters that are not letters should not change
- the count should be every other character (not every other letter)

# Examples

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Data Structure
Strings (Array)

# Algorithm

START METHOD DEFINITION staggered_case(string)
  Initialize a new string
  LOOP through the string one character a time
    IF the character occurs at an even index 
      make it uppercase save it in new string
    ELSE make it downcase and save it in new string
    ENDIF
  END LOOP
END METHOD DEFINITION

