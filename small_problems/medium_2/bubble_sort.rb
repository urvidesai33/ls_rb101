def bubble_sort!(array)
  n = array.size - 1
  count = 0
  loop do 
    p array
    swapped = false
    for i in 1..(n)
      count += 1 # to check how the optimization works, count will be higher without optimization
      if array[i] < array[i - 1]
      array[i], array[i - 1] = array[i - 1], array[i]
      swapped = true
      end
    end
      n = n - 1 # Further exploration - optimized bubble sort
    break if !swapped
  end
  p count
  array
end


####### LS SOLUTION #####
# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       next if array[index - 1] <= array[index]
#       array[index - 1], array[index] = array[index], array[index - 1]
#       swapped = true
#     end

#     break unless swapped
#   end
# end
###### END LS SOLUTION ######


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)