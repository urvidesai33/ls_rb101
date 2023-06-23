

def staggered_case(string)
  case_flag = nil
  new_string = ""
  
  string.split("").each do |char|
    if (case_flag == nil || case_flag == 'downcased') && char =~ /[A-Za-z]/
      new_string << char.upcase
      case_flag = 'upcased'
    elsif case_flag == "upcased" && char =~ /[A-Za-z]/
      new_string << char.downcase
      case_flag = 'downcased'
    else
      new_string << char
    end
  end
    new_string
end


#### LS SOLUTION ######

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
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
  end
  result
end

###### END LS SOLUTION ######


p staggered_case('I Love Launch School!')  == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'