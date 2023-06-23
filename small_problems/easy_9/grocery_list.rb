# def buy_fruit(fruit_array)
#   fruit_strings = []
#   fruit_array.each do |item|
#     for i in 1..item[1] 
#        fruit_strings << item[0] 
#     end
#   end
#   p fruit_strings

# end

# ####### LS SOLUTION 1 #####
# def buy_fruit(list)
#   expanded_list = []

#   list.each do |item|
#     fruit, quantity = item[0], item[1]
#     quantity.times { expanded_list << fruit }
#   end

#   expanded_list
# end 
# #### END LS SOLUTION 1 ####

####### LS SOLUTION 2 #####
def buy_fruit(list)
  list.map { |fruit, quantity| p [fruit] * quantity }.flatten
end
#### END LS SOLUTION 2 ####
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]