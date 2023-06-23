Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Example:
```ruby
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
```
    # Problem
        Input: String
        Output: String

    ## Rules
    - Explicit - Replace any words representing digits in the string with the actual digit 
               - Return the same String as the output
    - Implicit - 

    # Examples
    word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


    # Data Structure
    Strings, Arrays
    HASH as a look up for the digit words


    # Algorithm
    Create a reference hash that contains the digit words as keys and the string digit number as the value

    Iterate over the hash:
      If the string contains the key word in the hash, replace it with the key value

    Output the updated string.
      



    # Code

    # Further Exploration

There are many ways to solve this problem and different varieties of it. Suppose, for instance, that we also want to replace uppercase and capitalized words.

Can you change your solution so that the spaces between consecutive numbers are removed? Suppose the string already contains two or more space separated numbers (not words); can you leave those spaces alone, while removing any spaces between numbers that you create?

What about dealing with phone numbers? Is there any easy way to format the result to account for phone numbers? For our purposes, assume that any 10 digit number is a phone number, and that the proper format should be "(123) 456-7890".