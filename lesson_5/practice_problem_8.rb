# Using the each method, write some code to output all of the vowels from the strings.
# Hint: You can use the String#chars method to convert the words to arrays of individual characters.

# Example: "e", "i", "o"...
# Data Structures: 
#   hsh is the input, use array for storing and output

VOWELS = {a: true, e: true, i: true, o: true, u: true}
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}



hsh.each do |_, word_array|
  letter_array = word_array.join.chars
  letter_array.each do |letter|
      puts letter if  VOWELS[letter.to_sym]
    end
end

