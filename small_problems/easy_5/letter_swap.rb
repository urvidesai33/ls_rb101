# Given a string of words separated by spaces, 
# write a method that takes this string of words and 
# returns a string in which the first and last letters 
# of every word are swapped.

# You may assume that every word contains at least one letter,
#  and that the string will always contain at least one word. 
# You may also assume that each string contains nothing 
# but words and spaces/


def swap(string)
  swapped_string = string.split(" ").map do |word|
    first_letter, last_letter = word[0], word[-1]
    word[0], word[-1]  = last_letter, first_letter
    word
  end
 swapped_string.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'