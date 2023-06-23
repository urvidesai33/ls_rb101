Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

Examples

```ruby
swap_name('Joe Roberts') == 'Roberts, Joe'
```

  # Problem
    Input: Single String
    Output: Single String

  ## Rules
  ### Explicit
  - takes the string passed in and returns it with first word and second word reversed, separated by a comma


  # Examples
  swap_name('Joe Roberts') == 'Roberts, Joe'

  # Data Structure
  Strings

  # Algorithm
  swap_name(fullname)
  split the string into words in an array
  reverse the order of the words
  turn back into a string, separating the words by ", "
  END

  # Code