# def include?(array, search_item)
#   # if array == []
#   #   false
#   # else
#     array.each do |el|
#       return true if el == search_item
#     end
#   # end
#   false
# end

#### Alternative solution ####

def include? (array, search_item)
  array.one? { |el| el == search_item}
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
#p include?([]) => Error, expecting two arguments, given 1

##### LS SOLUTION #####
# `Enumerator#find_index` returns the first index at which `value` occurs.
# If the value is not in the array `#find_index` will return `nil`
# !! turns the truthy/falsy value into a boolean

# def include?(array, value)
#   !!array.find_index(value)
# end

### END LS SOLUTION ###

