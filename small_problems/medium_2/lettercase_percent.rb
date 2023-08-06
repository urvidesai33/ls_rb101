def letter_percentages(string)
  capital_alphabet = ("A".."Z").to_a
  size = string.size.to_f
  lowercase = []
  uppercase = []
  neither = []

  string.chars.each do |char|
    if !capital_alphabet.include?(char.upcase) 
      neither << char
    elsif char.downcase == char
      lowercase << char
    else
      uppercase << char

    end
  end
  
  lowercase_percent = sprintf("%#.1f", calculate_percentage(lowercase.count, size)).to_f
  uppercase_percent = sprintf("%#.1f", calculate_percentage(uppercase.count, size)).to_f
  neither_percent = sprintf("%#.1f", calculate_percentage(neither.count, size)).to_f

   {:lowercase => lowercase_percent, uppercase: uppercase_percent, neither: neither_percent}
end

def calculate_percentage(numerator, denominator)
  (numerator / denominator) * 100
end

# ###### LS SOLUTION #######
# def letter_percentages(string)
#   counts = {}
#   percentages = {}
#   characters = string.chars
#   length = string.length

#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

#   calculate(percentages, counts, length)

#   percentages
# end

# def calculate(percentages, counts, length)
#   percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
#   percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
#   percentages[:neither] = (counts[:neither] / length.to_f) * 100
# end

###### END LS SOLUTION 

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI') == {:lowercase=>66.7, :uppercase=>33.3, :neither=>0.0}