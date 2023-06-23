def penultimate(words)

  words_array = words.split
  words_array[-2]

end
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

####### FURTHER EXPLORATION #######
def penultimate_2(words)
  word_array = words.split
  if word_array.size.odd?
    word_array[word_array.size / 2] 
  else
    ""
  end
end


##### END FURTHER EXPLORATION #####

p penultimate_2('last word') == ''
p penultimate_2('Launch School is great!') == ''
p penultimate_2('there are five words here') == 'five'
p penultimate_2('word') == 'word'
p penultimate_2('') == ''