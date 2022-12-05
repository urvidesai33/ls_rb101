
DIGITS = { '0' => 0, "1" => 1, '2' => 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9}

def string_to_integer(numeric_string)
  string_array = numeric_string.chars.reverse
  int_array = string_array.map { |char| DIGITS[char]}
  
  num = 0
  int_array.each_with_index do |integer, i|
    num += (integer * 10 ** i)
  end
  num  
end

def signed_number?(string)
  string[0] == '-' || string[0] == '+'
end

def string_to_signed_integer(string)
  if signed_number?(string)
    case string[0]
    when '-'
      unsigned_num = - string_to_integer(string[1..-1])
    else
      unsigned_num = string_to_integer(string[1..-1])
    end
  else
    unsigned_num = string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100