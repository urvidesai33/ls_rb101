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

###### LS SOLUTION #####
# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end
#### END LS SOLUTION ####

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917