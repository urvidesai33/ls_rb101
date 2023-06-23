# def multiply_list(arr1, arr2)
#   products = []
#   index = 0

#   loop do 
#     products[index] = arr1[index] * arr2[index]
#     index += 1
#     break if index == arr1.size
#   end

#   products
# end

##### LS SOLUTION #####

# def multiply_list(list_1, list_2)
#   products = []
#   list_1.each_with_index do |item, index|
#     products << item * list_2[index]
#   end
#   products
# end

#### END LS SOLUTION #####


#### SOLUTION WITH ZIP ####
def multiply_list(arr1, arr2)

   products = arr1.zip(arr2).map {|arr|  arr.reduce(:*)}
end
#### END SOLUTION W/ZIP ####

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]