# def multiply_all_pairs(arr1, arr2)
#   products = []

#   arr1.each do |el1|
#     arr2.each do |el2|
#       products << el1 * el2
#     end
#   end

#   products.sort!
# end


###### LS SOLUTION ########
def multiply_all_pairs(array_1, array_2)
  p array_1.product(array_2) # => return is all array combination of the elements of the two arrays
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

#### END LS SOLUTION #######

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]