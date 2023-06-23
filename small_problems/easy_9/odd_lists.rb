def oddities(array)

  # SOLUTION 1 #
  # output_array = []
  # array.each_with_index do |el, idx|
  #   output_array << el if idx.even?
  # end
  # output_array
  # END SOLUTION 1 #


  # SOLUTION 2 #
  # output_array = []
  # index = 0

  # loop do 
  #   return output_array if array == []
  #   output_array << array[index]
  #   index += 2
  #   break if index > array.size - 1
  # end
  # output_array

  # END SOLUTION 2 #

  # SOLUTION 3 #


  

  # END SOLUTION 3 #

end

#### LS SOLUTION ########
# def oddities(array)
#   odd_elements = []
#   index = 0
#   while index < array.size
#     odd_elements << array[index]
#     index += 2
#   end
#   odd_elements
# end
####END LS SOLUTION#####


def evens(array)
  output_array = []
    array.each_with_index do |el, idx|
    output_array << el if idx.odd?
  end
  output_array
end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1, 1]) == [1, 3, 1]

# p evens([2, 3, 4, 5, 6]) == [3,5]
# p evens([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
# p evens(['abc', 'def']) == ['def']
# p evens([123]) == []
# p evens([]) == []
# p evens([1, 2, 3, 4, 1]) == [2,4]