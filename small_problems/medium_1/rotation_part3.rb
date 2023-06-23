def rotate_array(array)
  rotated_array = []
  array.each_with_index do |el, idx|
    if idx - 1 < 0 
      rotated_array[array.size - 1] = el
    else  
      rotated_array[idx - 1] = el
    end
  end
  rotated_array
end

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end

def rotate_rightmost_digits(int, last_digits)
  int_string = int.to_s
  rotate_string = int_string.reverse.slice(0, last_digits).reverse
  keep_string = int_string.reverse.slice(last_digits..-1).reverse

  rotated_string = rotate_string(rotate_string) 
  new_num = (keep_string + rotated_string).to_i
end

def max_rotation(int)
  max_num_of_rotations = int.to_s.size - 1
  digits_to_keep = 0
  
  rotation_number = 1
  new_int = int
  loop do 
    break if rotation_number == int.to_s.size
    digits_to_rotate = int.to_s.size - digits_to_keep
    new_int = rotate_rightmost_digits(new_int, digits_to_rotate)
    digits_to_keep += 1
    rotation_number += 1
  end
  new_int
end

#### LS SOLUTION ####
# def max_rotation(number)
#   number_digits = number.to_s.size
#   number_digits.downto(2) do |n|
#     number = rotate_rightmost_digits(number, n)
#   end
#   number
# end
##### END LS SOLUTION ####



p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845