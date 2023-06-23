Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'

Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

Example:

```ruby
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
```

  # Problem
  Input - 3 arguments, that are integers
  Output - string 

  ## Rules
  ### Explicit
  - calculate the mean average of the 3 integer arguments
  - output the letter grade associated with the average


  # Examples
  get_grade(95, 90, 93) == "A"
  get_grade(50, 50, 95) == "D"  

  # Data Structure
  Hash, Array

  # Algorithm
  get_grade(score1, score2, score3)

  create a look up table to determine which letter 
  grade is associated with which range of scores

  calculate the mean average of the scores
  sum of scores divided by number of scores

  look up the score in the look up table and return the associated letter grade
  - iterate through the grade_table hash
  - return the grade for the range in which the average falls

  # Code

  # Further exploration

How would you handle this if there was a possibility of extra credit grades causing it to exceed 100 points?