
text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
words = []
max_words = 0
longest_sentence = ""

sentences.each do |sentence|
  words = sentence.split(" ")
  if words.count > max_words
    longest_sentence = sentence.strip # removes leading and trailing whitespace
    max_words = words.count
  end
end
puts "The longest sentence is '#{longest_sentence}'. It was #{max_words} words."




# ###### LS SOLUTION #####
# text = File.read('sample_text.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size } # Returns the object in enum that gives the maximum value from the given block.
                                                                        # If no block is given, an enumerator is returned instead.
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"

# #### END LS SOLUTION ####


