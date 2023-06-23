SMALL_LETTERS = ("a".."z").to_a
CAPITAL_LETTERS = ("A".."Z").to_a


def swapcase(string)
  reversed_case_string = ""
  string.chars.each do |char|
    if SMALL_LETTERS.include?(char)
      reversed_case_string << char.upcase
    elsif CAPITAL_LETTERS.include?(char)
      reversed_case_string << char.downcase
    else
      reversed_case_string << char
    end
  end
  reversed_case_string
end


####### LS SOLUTION #####

# def swapcase(string)
#   characters = string.chars.map do |char|
#     if char =~ /[a-z]/
#       char.upcase
#     elsif char =~ /[A-Z]/
#       char.downcase
#     else
#       char
#     end
#   end
#   characters.join
# end

###### END LS SOLUTION ########


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'