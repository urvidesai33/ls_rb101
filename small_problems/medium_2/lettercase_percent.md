In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Examples
```ruby
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
```

  # Problem
  Determine which character are upper case and lower case, and those that are not alphabetical in a String.
  Determine the percentage in the string that uppercase, lowercase and non alphabetical.
 Return the percent values in a hash.



  # Examples
  letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
  letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
  letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }


  # Data Structure
  String 
  Hash
  Array?

  # Algorithm
  Get the size of the string and save it in a variable
    - string_size
  Initialize all arrays
  Determine if the character is an alphabet
    - compare it against reference or use regex

  If it's not an alphabet save it into an array called not_alphabet
    - initialize array
    - push the character into that array
  if it is an alphabet
    determine if it's lower case or uppercase
    - compare the letter to letter.downcase
    - if it matches the letter is lower case
    - if it doesnt match then it is upper case
    if lowercase save it in array low_case
    - initialize the array
    - push the letter into the array
    if uppercase save it in array in up_case
    - initialize the array
    - push the letter into the array
  
  Get the size of each array
  And use the respective sizes returned to determine the percentages
  size_array/size_string * 100

  Put the respective percentages as values in a hash with keys lowercase:, uppercase: and neither: 



# Further Exploration

If we passed a string 'abcdefGHI' as an argument to our method call the solution would be {:lowercase=>66.66666666666666, :uppercase=>33.33333333333333, :neither=>0.0}. It would be nicer if we could round these float numbers so that our solution looks like this {:lowercase=>66.7, :uppercase=>33.3, :neither=>0.0}. Try creating that solution on your own.


  # Code