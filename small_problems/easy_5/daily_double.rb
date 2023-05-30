# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

def crunch (double_string)
  double_string_array = double_string.chars
  single_string_array = [double_string_array[0]]
  index = 1
  double_string_array.each do |char|
    single_string_array << double_string_array[index]if double_string[index] != char
    index += 1
  end
  p single_string_array
single_string_array.join
end



p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''