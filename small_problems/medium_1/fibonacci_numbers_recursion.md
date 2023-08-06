The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In mathematical terms:
F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2


Sequences like this translate naturally as "recursive" methods. A recursive method is one in which the method calls itself. For example:

```ruby
def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end
```

sum is a recursive method that computes the sum of all integers between 1 and n.

Recursive methods have three primary qualities:

They call themselves at least once.
They have a condition that stops the recursion (n == 1 above).
They use the result returned by themselves.
In the code above, sum calls itself once; it uses a condition of n == 1 to stop recursing; and, n + sum(n - 1) uses the return value of the recursive call to compute a new return value.

Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

Examples:

```ruby
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765
```

  # Problem

  Input - Integer
  Output - Integer - the nth(input) number in the fibonacci sequence

  Rules: 
  - Explicit
    n - is an integer
    the output is the nth number in the fibonacci sequence
   sequence:  0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610
    position:   1 2 3 4 5 6 7  8  9 10 11 12  13  14  15  16

  # Examples


  # Data Structure

  Array

  # Algorithm

F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2

Initalize array with the first two numbers of the sequence
[0, 1, 1]

F(3) = 0 + 1 + 1 => F(1) + F(2)
F(4) = F(3) + F(2) + F(1)
F(4) = (F(2) + F(1)) + F2 + F1
F(5) = F(4) + F(3) + F(2) + F(1)
F(5) = ((F(2) + F(1)) + F2 + F1) + (F(1) + F(2)) + F2 + F1
 n  is the index of the number

recursion ends when n = 1




  # Code