A triangle is classified as follows:

equilateral: All 3 sides are of equal length
isosceles: 2 sides are of equal length, while the 3rd is different
scalene: All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

Examples:

```ruby
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

```

  # Problem

  Determine if a triangle is a valid one.
  If it is then output the type, equilateral, scalene or isosceles. 

  Input: Integers (lengths of sides)
  Output: Symbol (type of triangle)

  Rules: 
    - Valid triangle is 
      sum of lengths of shortest > length of longest
    - If the triangle doesnt meet the triangle criteria it is grouped in :invalid
    - if any of the sides = 0, it is :invalid
  
  
  # Examples
triangle(3, 3, 3) == :equilateral
 - all sides are equal
triangle(3, 3, 1.5) == :isosceles
 - 2 sides are equal, and sum of shortest sides is > longest
triangle(3, 4, 5) == :scalene
 - 3 + 4 > 5
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid
 - 1 + 1 = 2


  # Data Structure

  Arrays - 



  # Algorithm

  - 3 digits input
  - save the 3 digits as a, b, c



  - check if it's valid (this can be a boolean method)
    - if a, b, c == 0 then output :invalid
    - a + b <= c then output :invalid
  
  - if all 3 numbers are equal
   - output :equilateral
  - if 2 of the numbers are equal
    - output :isosceles
  - if all numbers are unique
    - output scalene



  # Code

  