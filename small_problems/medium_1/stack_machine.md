Give us your feedback
Stack Machine Interpretation

A stack is a list of values that grows and shrinks dynamically. In ruby, a stack is easily implemented as an Array that just uses the #push and #pop methods.

A stack-and-register programming language is a language that uses a stack of values. Each operation in the language operates on a register, which can be thought of as the current value. The register is not part of the stack. Operations that require two values pop the topmost item from the stack (that is, the operation removes the most recently pushed value from the stack), perform the operation using the popped value and the register value, and then store the result back in the register.

Consider a MULT operation in a stack-and-register language. It multiplies the stack value with the register value, removes the value from the stack, and then stores the result back in the register. Thus, if we start with a stack of 3 6 4 (where 4 is the topmost item in the stack), and a register value of 7, then the MULT operation will transform things to 3 6 on the stack (the 4 is removed), and the result of the multiplication, 28, is left in the register. If we do another MULT at this point, then the stack is transformed to 3, and the register is left with the value 168.

Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value
All operations are integer operations (which is only important with DIV and MOD).

Programs will be supplied to your language method via a string passed in as an argument. Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.

You should initialize the register to 0.

Examples:
```ruby

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
```

  # Problem

  Input: String
  Output: Integer (Depends on operation)

  ## Rules
  - All operations are integer operations
  - Register is independent of the stack
  - The result of any operation is stored in the register
  - operations requiring 2 integers takes one from the register and second from popping the stack
  - Implicit - initial value stored in the register is 0


  # Examples 
  - See above

  minilang('5 PUSH 3 MULT PRINT') 
  1. -> Put integer 5 in register 
  2. -> Push 5 onto top of stack 
  3. -> Put integer 3 in register
  4. -> Multiply register value(3) with popped value from stack (5) and save the answer (15) in the register
  5. -> Output register value to the terminal
  # 15


  # Data Structure
  arrays, hash

  # Algorithm
  minilang(instructions)
  initialize register to an array of 1 with inital value 0
  intitialize stack to empty array
  initialize instructions array
  split the string into an array - save it to instructions array
  iterate over the instructions array with block parameter word
    if the word is an integer save it to register 
    elsif PUSH, POP, then execute the action on the stack
    else go to the method indicated by the word (ADD, SUB, MUL, DIV, MOD, PRINT)
      pass register and stack to each method (except PRINT will only get register value)
      register and stack will be mutated in the method (except PRINT)



  # Code

  # Further Exploration

Try writing a minilang program to evaluate and print the result of this expression:

```ruby

(3 + (4 * 5) - 7) / (5 % 3)
```
The answer should be 8. This is trickier than it sounds! Note that we aren't asking you to modify the #minilang method; we want you to write a Minilang program that can be passed to #minilang and evaluated.


Test: 
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
#6

register -> 3
stack -> [3]
stack -> [3, 3]
register -> 7
DIV -> 7/3 --> register -> 2
MULT -> 2 * 3 --> register -> 6

 (7/3) * 3

Test: 
 minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

register -> 4
stack -> [4]
stack -> [4,4]
register -> 7
7%4 = 3 -> register -> 3
3 * 4 = 12

(7%4) * 4


register-> 3 -> "3"
stack -> [3] -> "PUSH"
register -> [5] -> "5"
MOD -> 5%3 = 2, register -> 2
stack -> [2] - PUSH
register -> 7 -> "7"
stack -> [2,7] -> PUSH
register -> 3 -> "3"
stack -> [2,7, 3] -> PUSH
register -> 5 -> "5"
stack -> [2,7, 3, 5] -> "PUSH"
register -> 4 -> "4"
MUL -> 4 * 5 = 20, register -> 20
ADD -> 20 + 3 -> register -> 23
SUB -> 23 - 7 -> register -> 16

(3 + (4 * 5) - 7)




