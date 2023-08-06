def balanced?(string)
  just_parentheses = []
  open_bracket =[]
  closed_bracket = []
  string.chars.each do |char|
    just_parentheses << char if char == "(" || char == ")"
  end
  just_parentheses.length


  just_parentheses.each do |bracket|
    open_bracket << bracket if bracket == "("
    closed_bracket << bracket if bracket == ")"
    if (closed_bracket.count > open_bracket.count)
      return false
    end  
  end
    return false if open_bracket.count != closed_bracket.count
  true
end

###### LS SOLUTION #####

def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end

#### END LS SOLUTION

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false