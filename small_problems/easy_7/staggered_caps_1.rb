def staggered_case(string)
  staggered_string = ""
  string.chars.each_with_index do |char, idx|
    idx.even? ? staggered_string << char.upcase : staggered_string << char.downcase
  end
  staggered_string
end

###### LS SOLUTION ######

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end

##### END LS SOLUTION #######

p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'