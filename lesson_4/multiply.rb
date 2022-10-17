def multiply (number_list, multiplier)
  result_list = []
  counter = 0

  loop do
    break if counter == number_list.size

    result_list << (number_list[counter] * multiplier)
    counter += 1
  end
result_list
end


my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers