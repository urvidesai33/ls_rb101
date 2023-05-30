def merge(array1, array2)
  array = (array1 + array2).uniq.sort
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


## LS SOLUTION###
# Uses the `Array# |` (union) - gives the set union of both arrays, without including any duplicates. 

# def merge(array_1, array_2)
#   array_1 | array_2
# end

## END LS SOLUTION ###