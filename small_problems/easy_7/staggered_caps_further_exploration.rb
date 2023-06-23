def staggered_case(string, stagger_by_letter)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if stagger_by_letter
      if char =~ /[a-z]/i
        if need_upper
          result += char.upcase
        else
          result += char.downcase
        end
        need_upper = !need_upper
      else
        result += char
      end
    else 
      if need_upper
      result += char.upcase
      else
      result += char.downcase
      end
      need_upper = !need_upper
    end
  end
  result
end

p staggered_case('I Love Launch School!', false) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', false) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case('I Love Launch School!', true)  == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS', true) == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 nUmBeRs'