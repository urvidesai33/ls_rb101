# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

ALPHABET = ('A'..'z')

def cleanup(string)
  string.chars.map do |char|
    string.gsub!(char, " ") if !ALPHABET.include?(char)    
  end
  string.squeeze(" ")
end

def word_sizes(sentence)
  word_count_hash = Hash.new(0)
  sentence.split.map do |word|
    word.delete!('^A-za-z')
    word_count_hash[word.size] += 1
  end
word_count_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}