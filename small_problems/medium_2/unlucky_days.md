Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

Examples:
```ruby
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2
```
Hint: 
Ruby's Date class may be helpful here.
Look at how to initialize a Date object
Look at the friday? method

  # Problem

  Find the number of Friday the 13th in the given year (argument).
  
  Assumptions: The year is larger than 1752. 

  Input: year
  output: integer (# of Friday the 13ths)

  # Examples
  friday_13th(2015) == 3
  friday_13th(1986) == 1
  friday_13th(2019) == 2




  # Data Structure
  The year is a collection of days

  # Algorithm
  year is a collection of days
  iterate over the days, 
    if the day is friday then check if the date is 13
    if true then add 1 to count
  repeat until end of the year

  output count

  # Code

  # Further Exploration

An interesting variation on this problem is to count the number of months that have five Fridays. This one is harder than it sounds since you must account for leap years.

  ## Algorithm
  Initialize the first day of the year
  Initialize count for months that have 5 fridays
  
  - Iterate over every month 
    - Count the number of fridays in the month
    - the the count is equal to 5 add 1 to the month of 5 friday count
    - Repeat for next month


