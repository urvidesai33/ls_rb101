Fibonacci Numbers (Procedural)

In the previous exercise, we developed a recursive solution to calculating the nth Fibonacci number. In a language that is not optimized for recursion, some (not all) recursive methods can be extremely slow and require massive quantities of memory and/or stack space.

Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion; as a result, the Fibonacci solution is only useful up to about fibonacci(40). With higher values of nth, the recursive solution is impractical. (Our tail recursive solution did much better, but even that failed at around fibonacci(8200).)

Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

Rewrite your recursive fibonacci method so that it computes its results without recursion.

Examples:
```ruby
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501
```



  # Problem
  Write a program to find the nth number in the fibonacci sequence
  Input: integer
  Output: integer

 

  # Examples
 F1 = 1, F2 = 1, F3 = 2, => 1, 1, 2, 3, 5, 8, 13, 21, 34, 55,  

  # Data Structure
  Array




  # Algorithm
    fibonacci(nth)
    initialize the  the array to [0, 1, 1, 2]
    initialize count to size of array - 1
    F(n) = F(n-1) + F(n-2)

    
     push the sum of the last two numbers in the array into the array
repeat until count= n
return the last element in the array

  # Code
