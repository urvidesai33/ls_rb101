def word_to_digit(sentence)
  num_words = { "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9"}

  num_words.each do |word, num|
    sentence.gsub!(/\b#{word}\b/, num)
  end
  sentence
end

#### LS SOLUTION ####

# Using a regex (/\b#{word}\b/) ensures that only WHOLE words are being replaced with a dight and not substrings
# eg: eight in 'freight'

# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end
# #### END LS SOLUTION ####


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'