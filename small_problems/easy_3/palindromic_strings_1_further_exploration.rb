# Further Exploration

# Write a method that determines whether an array is palindromic; 
# that is, the element values appear in the same sequence 
# both forwards and backwards in the array. 

# Now write a method that determines whether an array or a string is palindromic; 
# that is, write a method that can take 
#   either an array or a string argument, 
# and determines whether that argument is a palindrome. 
# You may not use an if, unless, or case statement or modifier.

def palindromic?(item)
  item == item.reverse
end

p palindromic?([2 ,4, 4, 2]) == true
p palindromic?("hannah") == true
p palindromic?([2, 4, 6, 8]) == false
p palindromic?("hello") == false
