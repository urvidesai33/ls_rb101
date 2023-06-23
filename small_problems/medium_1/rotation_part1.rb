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

##### LS SOLUTION #####
# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end
#### END LS SOLUTION ####

def rotate_string(string)
  p rotate_array(string.chars).join
end

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]   
p rotate_string("abcde") == "bcdea"             # => true
p rotate_integer(1235) == 2351