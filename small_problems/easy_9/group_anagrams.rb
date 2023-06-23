def anagrams(word_array)
  anagrams = []
  word_array.each_with_index do |word, index|
    subarray = []
    if !anagrams.flatten.include?(word)
      subarray << word
      for other_word in word_array[index + 1..-1] # every word in the remaining part of the array
        if other_word.chars.all? { |char| word.include?(char)}
          subarray << other_word
        end
      end
      anagrams << subarray
    end
  end
  anagrams.each do |group|
    p group.sort
  end
end


##### LS SOLUTION #####

# result = {}

# words.each do |word|
#   key = word.split('').sort.join
#   if result.has_key?(key)
#     result[key].push(word)
#   else
#     result[key] = [word]
#   end
# end

# result.each_value do |v|
#   puts "------"
#   p v
end
###### END LS SOLUTION #####
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams(words)

