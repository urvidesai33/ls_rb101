require 'pry'

def halvsies(array)
  array_size = array.size
  sub_array1 = []
  sub_array2 = []
  index = 0

  if array_size == 0 
    sub_array1, sub_array2 = [], []
  elsif array_size == 1
    sub_array1, sub_array2 = array, []
  elsif array_size.even?
      loop do 
        sub_array1 << array[index]
        index += 1
        break if index == (array_size / 2)
      end

      loop do 
        sub_array2 << array[index]
        index +=1
        break if index == (array_size)
      end
  else
    loop do
      sub_array1 << array[index]
      index += 1
      break if index == ((array_size / 2) + 1)
    end

    loop do 
      sub_array2 << array [index]
      index += 1
      break if index == (array_size)
    end
  end

  [sub_array1, sub_array2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

### LS SOLUTION ###

# `Integer#ceil` rounds up a float number to the next integer
# Example 2.5.ceil => 3
# `Array#slice`, the first argument is the starting index, and the second argument is the number of elements


# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end

### END LS SOLUTION ###