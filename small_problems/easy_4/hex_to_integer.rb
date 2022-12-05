DIGITS = { '0' => 0, "1" => 1, '2' => 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9,
            'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, "E" => 14, 'F' => 15}
p DIGITS
def hexadecimal_to_integer(hex_string)
  string_array = hex_string.upcase.chars.reverse
  int_array = string_array.map { |char| DIGITS[char]}
  p int_array
  num = 0
  int_array.each_with_index do |integer, i|
    num += (integer * 16 ** i)
  end
  p num  
end
p hexadecimal_to_integer('4D9f') == 19871