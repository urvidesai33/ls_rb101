def reverse_words(string)
  words = string.split
  words.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  words.join(" ")
end

##### LS SOLUTION #####
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end
#### END LS SOLUTIN ####

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS