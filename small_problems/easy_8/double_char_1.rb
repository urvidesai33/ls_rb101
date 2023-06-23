def repeater(string)
  doublestring = ''
  string.chars.each do |char|
     doublestring << char * 2
  end
  doublestring
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

##### LS SOLUTION #####
# def repeater(string)
#   result = ''
#   string.each_char do |char|
#     result << char << char
#   end
#   result
# end

#### END LS SOLUTION ####