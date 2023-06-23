Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

Examples
```ruby
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
```

# Problem
Method takes a string as input, and outputs a hash. The hash has 3 keys, one for lower case, one for uppercse, and last for neither. The count of each type of character in the string is stored as the value for each key. 

Input: String
Output: Hash

Rules:
- Implicit Rules - a Space is a character

# Examples

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Data Structures
String and Hash
Reference Strings for comparison

# Algorithm

START METHOD DEFINITION letter_case_count(string)
  create reference Strings for uppercase and lowercase letters
    create a range and convert to string
  Initialize the output hash Hash.new(0)
  iterate through string one character at a time
    if the character is in the uppercase range
      increment the uppercase: value
    if the character is in the lowercase range
      increment the lowercase: value
    else 
      increment the neither value
    endif
  end loop
  return output_hash
END METHOD DEFITINION