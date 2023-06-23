# def word_cap(sentence)
#   p sentence.object_id
#   words = sentence.split

#   words.each do |word|
#     word.capitalize! unless word.start_with?('"')
#   end

#   capitalized = words.join(" ")
#   p capitalized.object_id
#   capitalized
# end


############ LS SOLUTION 1 #############

# def word_cap(words)
#   words_array = words.split.map do |word|
#     word.capitalize
#   end
#   words_array.join(' ')
# end

############ END LS SOLUTION 1 ##########

############ LS SOLUTION 2 ##############

# def word_cap(words)
#   words.split.map(&:capitalize).join(' ')
# end


# In the second solution, (&:method_name) is shorthand notation for { |item| item.method_name }. Thus, &:capitalize translates to:

# do |word|
# word.capitalize
# end

################# END LS SOLUTION 2 #########


######## SOLUTION 1 without USING built-in #capitalize#
# def word_cap(sentence)
#   words = sentence.split
#   capitalized_words = []

#   words.each do |word|
#     if word.start_with?('"')
#       capitalized_words << word
#     else
#       letters = word.downcase.chars
#       letters[0].upcase!
#       capitalized_words << letters.join
#     end
#   end

#   capitalized_words.join(' ')
# end

################ END SOLUTION 1#############################

######## SOLUTION 2 without USING built-in #capitalize#
def word_cap(sentence)
  lowercase_alphabet = ("a".."z").to_a
  capitalized_string = ""

  sentence.chars.each_with_index do |char, idx|
    if lowercase_alphabet.include?(char) && idx == 0
      capitalized_string << char.upcase
    elsif lowercase_alphabet.include?(char) && sentence[idx - 1] == " "
      capitalized_string << char.upcase
    else
      capitalized_string << char.downcase
    end
  end
    capitalized_string
end

################ END SOLUTION 2#############################
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'