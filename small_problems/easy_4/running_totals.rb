# Write a method that takes an Array of numbers, 
# and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.

def running_total(num_array)
  totals_array = []
  num_array.each_with_index do |num,i|
    totals_array[0] = num if i == 0
    totals_array[i] = num + totals_array[i - 1] if i > 0
  end
  totals_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []