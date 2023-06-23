def letter_case_count(string)
  lowercase_reference = ("a".."z").to_a.join
  uppercase_reference = ('A'..'Z').to_a.join
  output_hash = {uppercase: 0, lowercase: 0, neither: 0}
  
  string.chars.each do |char|
    if lowercase_reference.include?(char)
      output_hash[:lowercase] += 1
    elsif uppercase_reference.include?(char)
      output_hash[:uppercase] += 1
    else
      output_hash[:neither] += 1
    end
  end
  output_hash
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

#### LS SOLUTION

# Uses #count method and regex 

# def letter_case_count(string)
#   counts = {}
#   characters = string.chars
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
#   counts
# end

### END OF LS SOLUTION ####