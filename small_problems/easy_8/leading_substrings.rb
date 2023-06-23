def leading_substrings (str)
  substrings_array = []

  1.upto(str.size) do |count|
    substring = ""
    substrings_array << str[0, count]
  end

  substrings_array
end

#### LS SOLUTION ####
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end
#### END LS SOLUTION #####

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']