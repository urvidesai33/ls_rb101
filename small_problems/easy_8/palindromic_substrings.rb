def leading_substrings (str, index)
  substrings_array = []
  index.upto(str.size - 1) do |last_index|
    substrings_array << str[index..last_index]
  end
  substrings_array
end

def substrings(str)
  all_strings_array = []

  str.chars.each_with_index do |_, index|
    all_strings_array << leading_substrings(str, index)
  end

  all_strings_array.flatten
end

def palindromes(str)
  alphanumeric = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
  palindromes = []
  new_str = ""
  str.chars.each do |char|
    new_str = str.delete(char) if !(alphanumeric.include?(char))
  end
    substrings = substrings(new_str)

  palindromes = substrings.select do |substr|
                  substr == substr.reverse && substr.size > 1
                end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
   '-madam-', 'madam', 'ada', 'oo'
 ]
p palindromes('knitting cassettes') == [
   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
 ]
 p palindromes('hello-madam-did-madam-goodbye')# == [
  # 'll', 'madam', 'madamdidmadam', 'madam', 'madamdidmadam', 'ada',
  # 'adamdidmada', 'damdidmad', 'amdidma', 'mdidm', 'did', 'did',
  #  'madam', 'ada', 'oo']