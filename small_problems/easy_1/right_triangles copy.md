Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.


```ruby
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
```

**PEDAC**

1. Problem Description
  Input: Positive integer (n)
  Output: a right triangle whose sides each have n stars (horizontal and vertical). Right angle should form on the lower right.

  Explicit rules: 
    - as described in input and output statements

  Implicit rules: 
    - none

2. Examples 
  triangle(5)

      *
    **
    ***
  ****
  *****

  triangle(9)

          *
        **
        ***
      ****
      *****
    ******
    *******
  ********
  *********

3. Data Structures
  Input is an integer. No special data structure needed. 

4. Algorithm

  ```pseudocode
  SET constants for blanks and stars 
  SET COUNTER to 1
 
  PRINT first line (n-counter blanks) + (counter star)
  REPEAT until COUNTER == n
```

Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.

**ALGORITHM**

```pseudocode
SET size
SET CHOICES
CASE CHOICE
Top_Right
 size.upto(1) {|x| puts x}
Top_Left
  DO...
Bottom_Right
  DO...
Top_Left
  DO...
ENDCASE
