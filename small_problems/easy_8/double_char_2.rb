def double_consonants(string)
  consonants = ("a".."z").to_a  - %w(a e i o u)
  new_string = ''

  string.chars.each do |char|
    if consonants.include?(char.downcase)
      new_string << char * 2
    else
      new_string << char
    end
  end
  new_string
end


##### LS SOLUTION #####
# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# def double_consonants(string)
#   result = ''
#   string.each_char do |char|
#     result << char
#     result << char if CONSONANTS.include?(char.downcase)
#   end
#   result
# end

#### END LS SOLUTION ####

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""