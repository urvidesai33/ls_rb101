# def interleave(arr1, arr2)
#   output_array = []
#   index = 0
#   loop do
#     output_array << arr1[index]
#     output_array << arr2[index]
#     index += 1
#     break if index >= arr1.size
#   end
#   output_array
# end

##### LS SOLUTION ####

# ` << ` can be used in sequence to push elements into an array

# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#      result << element << array2[index]
#   end
#   result
# end
##### END LS SOLUTION #####

#### ALTERNATIVE SOLUTION ####

def interleave (arr1, arr2)
  arr1.zip(arr2).flatten
end
##### END ALTERNATIVE SOLUTION

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']