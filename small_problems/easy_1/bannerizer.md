#bannerizer.md

1. Problem
  Write a method to take a 'short' line of text and put it in a box
  Inputs: String
  Output: String in a box

  Explicit Rules: 
  - Text should be enclosed in a box as per the examples
  - If there is no text the box should be empty

  Implicit Rules: 
  - None.

2. Examples
  ```ruby
  print_in_box('To boldly go where no one has gone before.')
  ```
  +--------------------------------------------+
  |                                            |
  | To boldly go where no one has gone before. |
  |                                            |
  +--------------------------------------------+


  ```ruby
  print_in_box('')
  ```
  +--+
  |  |
  |  |
  |  |
  +--+

3. Data Structures
  Input is a string. Output is also strings. 
  Output strings can be stored as 5 separate strings.

4. Algorithm

  1. start method, method parameter is string
  2. Set constants CHAR1, CHAR2, CHAR3 and SPACE to create the box
  3. initialize a new variable with value that is the size of string
  4. output the box to fit the size of the string
    - print top
      - print CHAR1, 
      - print CHAR2, repeat until reaches the size of the string
      - print CHAR1, new line
    - print blank
      - print CHAR3
      - print CHAR4, repeat until reaches the size of the string
      - print CHAR3, new line
    - print string
      - print CHAR3 + string + CHAR3 + \n
    - print blank
    - print bottom
  5. end method

  



