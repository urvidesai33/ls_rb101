#  Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes(sentence)
  word_count_hash = Hash.new(0)
  sentence.split.map do |word|
    word_count_hash[word.size] += 1 
  end
  # word_size_array.each do |size|
  #   word_count_hash[size] = word_size_array.count(size)
  # end
word_count_hash
end



p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}