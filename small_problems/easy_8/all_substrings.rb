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


##### LS SOLUTION #####
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

##### END LS SOLUTION ######

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]