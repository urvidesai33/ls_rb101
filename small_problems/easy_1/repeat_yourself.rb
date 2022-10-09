# Method that takes two arguments:
# - a string, and an integer
# - print string as many times as the integer

# Inputs: a string and an integer
# Outputs: a string repeated <integer> times

# Rules: Explicit: Print a string as many times as the value of integer
#        Implicit: print on new line each iteration

# Data structure: String 

# Algorithm: 
# 1) Print string
# 2) Repeat 1) as many times as integer value

def repeat(word, value)
  counter = 0
  loop do
    break if counter == value
    puts word
    counter += 1
  end
end

repeat('Hello', 3)
repeat("What's up?", 10)


### LAUNCH SCHOOL SOLUTION ###
# def repeat(string, number)
#   number.times do
#     puts string
#   end
# end