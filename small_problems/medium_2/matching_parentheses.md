Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Examples:
```ruby
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
balanced?('What ())(is() up') == false
```

Note that balanced pairs must each start with a (, not a ).
  # Problem
 Input - String
 Output - Boolean

 Return true if the string contains matching pairs of parentheses
 - Rules
  - Explicit: 
  The matching pairs should occur in order: "(" followed by ")"
  Each "(" should have a matching ")"

  # Examples
balanced?('What (is) this?') == true
( open
) close
balanced?('What is) this?') == false
) close
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
( open
( open
) close
( open
) close
) close

balanced?('((What)) (is this))?') == false
(
(

balanced?('Hey!') == true
balanced?(')Hey!(') == false
) - close
( - open

balanced?('What ((is))) up(') == false

( - open
( -open
) - close
) - close
) -close
( -open

balanced?('What ())(is() up') == false

(
)
)
(
(
)
)
  # Data Structure
  Strings
  Array

  # Algorithm

  
  Remove all the non parentheses characters including spaces from the string
  Iterate over the new string one character at a time
    if parentheses are in order return true
      check if number of "(" == number of ")"
      check if first char is "("
      check if last char is ")"
  

  # Scratchpad

  balanced?('((What) (is this))?') == true
( open
( open
) close
( open
) close
) close

open: [o,o,o]
close: [c,c,c]
  

balanced?('What ())(is() up') == false

(
)
)
(
(
)
)

open: [o,]
close: [c,c]


On every iteration of ')' the count of '(" should be greater than the count of ')'
  # Code