Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

Example:

```ruby
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
```

# Problem 

Write a method that staggers the capitalization of the letters only. 

Input: String
Output: new string with the capitalization staggered for the letters

Rules: The string should still include all non-alphabet characters


# Examples
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Data Structures
String

# Algorithm

START METHOD DEFINITION (string)
Create reference array of small letters
Create reference array of capital letters

Create a new empty string "" 
Create a variable flag that flags whether a letter has been upcased or downcased = nil

LOOP through the string one character at a time
  IF case flag is nil, or downcased 
    save the char.upcase in the new string
    set flag to upcased
  ELSIF case flag is upcased
    save the char.downcase in the new string
    set flag to downcased
  ELSE
    save the char to the new string
   ENDIF
ENDLOOP

END METHOD DEFINITION


