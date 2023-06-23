You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

  # Problem
 Input : integer
 Output: array of integers

 Rules: 
 - n is a positive integer, no 0
 - output is an array of integers, for which the "light" is on
 - only the switches that are a multiple of the current iteration number are toggled

  # Examples
   See above


  # Data Structure

  Hash, Array


  # Algorithm
  light_toggle(n)
  - set up a hash with n key/value pairs
    - keys = switches are integers, values are strings
    - values will be togged "on" and "off" (use boolean true for on, false for off)
  - initialize a counter from 1 to n
  - iterate counter number of times
    - at the iteration of counter, only the keys that are a multiple of counter will toggle
      - select the lights that need to toggle and save in a separate hash
      - merge the changed lights back into original hash
    - repeat 
  - return the keys/switches whose values are "on"



  # Code


 # Further Exploration

There are a few interesting points about this exercise that we can explore:

Do you notice the pattern in our answer? Every light that is on is a perfect square. Why is that?
- the reason why all the lights that are on are square numbers is because these numbers have an odd number of factors, because at some point a factor is mulitpled by itself to result in the number.
Therefore, if the switch number has an odd number of factors, it will be toggled an odd number of times
 - on - off - on
 and hence that light will be on.
 whereas for numbers with an even number of factors, the light will toggle even number of times 
 - on - off - on - off
 Thus that light will be off.

What are some alternatives for solving this exercise? What if we used an Array to represent our 1000 lights instead of a Hash, how would that change our code?
- if using an array, index + 1 can be the light #. instead of checking if the hash key is multiple of count, now check if (index + 1) is a multiple of count.

We could have a method that replicates the output from the description of this problem (i.e. "lights 2, 3, and 5 are now off; 1 and 4 are on.") How would we go about writing that code?

  1
  4 - multiple of 1 and 2 and 4 - 3 possible factors
  9 - multiple of 1 and 3, 9 - 3 possible factors
  12 - multiple of 1, 2, 3, 4, 6, 12 - 6 possible factors
  15 - multiple of 1, 3, 5, 15 - 4 possible factors
  16 - multiple of 1, 2, 4 , 8, 16 - 5 possible factors
  17 - multiple of 1, 17 - 2 possible factors