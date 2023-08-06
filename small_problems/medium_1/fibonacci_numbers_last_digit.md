Fibonacci Numbers (Last Digit)

In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

Examples:

```ruby
fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4
```


  # Problem
  Return the last digit of the nth number in the Fibonacci sequence
  Input - Integer
  Output - Integer

  # Examples


  # Data Structure

  Array, String


  # Algorithm
  - Find the nth Fibonacci number
  - Return the last digit in that number
    - 

  # Code

  # Further Exploration

After a while, even this method starts to take too long to compute results. Can you provide a solution to this problem that will work no matter how big the number? You should be able to return results almost instantly. For example, the 123,456,789,987,745th Fibonacci number ends in 5.

numbers that end in 0 occur at every 15th spot -
numbers that end in 5 occur at every 15th spot but starting at 5

numbers that end in 2 occur at every 33rd spot starting at 
pos
03  => 1 * 3 
36 => 12 * 3 -> + 11 -> 2 * 2 * 3 * 3
54 => 18 * 3 -> + 6
57 => 19 * 3 -> + 1
63 => 21 * 3 -> + 2
96 => 32 * 3 -> + 11 -> 2 * 2 * 2 * 2 * 2 * 3
114 => 38 * 3 -> + 6
117 => 39 * 3 -> + 1
123 => 41 * 3 -> + 2
156 => 52 * 3 -> + 11 -> 13 * 2 * 2 * 3
174
177

The way to solve this without using too much processing power is to factor out the position. for example if we are looking for the 96th position, the number will be 2. 
We can figure this out because we know that if it's a multiple of 3 and 60 spots from 36.

position of fib # with last digit 3 

Pattern is after the first 100 occurrences, the cycle will repeat every 60 digits

4
7   -> +3
* 13  -> +6
26  -> +13
44  -> +18
** 46  -> +2
47  -> +1
53  -> +6
64  -> +9
67  -> +3
* 73  -> +6
86  -> +13
104 -> +18
** 106 -> +2
107 -> +1
113 -> +6
124 -> +9
125 -> +1
127 -> +2
* 133 ->
146
** 166
167
173
184
187
* 193
** 206
224
226
233
244
247
* 253
** 266