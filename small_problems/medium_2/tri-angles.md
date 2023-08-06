A triangle is classified as follows:

right:  One angle of the triangle is a right angle (90 degrees)
acute:  All 3 angles of the triangle are less than 90 degrees
obtuse: One angle is greater than 90 degrees.
To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

Examples:
```ruby
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid
```
  # Problem
  Determine if a triangle is a valid triangle. That is all angles add up to 180 and none are 0
  If it is valid then determine if it is right, obtuse or acute

  assumptions: all arguments are integers 
              all arguments are in degrees


  # Examples
  triangle(60, 70, 50) == :acute - all angles are less than 90
triangle(30, 90, 60) == :right - one angle is 90
triangle(120, 50, 10) == :obtuse - one angle is larger than 90
triangle(0, 90, 90) == :invalid - an argument is 0
triangle(50, 50, 50) == :invalid - angles do not add up to 180 



  # Data Structure
  Array

  # Algorithm
 - create array of angles
 - check if the triangle is valid
  - triangle is valid if all angles are > 0 and all angles add up to 180
  - output invalid if not valid
 - check if the triangle is right angle
  - check if any angle in the array is 90 degrees
   - output right if true
  - check if the triangle is acute
    - check if all angles in the array are less than 90
   - output acute if true
  - check if triangle is obtuse
    check if any angle in the array is > 90 degrees
   - output obtuse if true

  # Code

  
