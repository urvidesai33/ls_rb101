def find_fibonacci_index_by_length(num_of_digits)
  fibonacci_array = [1, 1]
  index = 1

  loop do
    fibonacci_array << fibonacci_array[index - 1] + fibonacci_array[index]
    #p fibonacci_array
    index += 1
    break if length_match?(fibonacci_array[index], num_of_digits)
  end
 
  fibonacci_array.index(fibonacci_array.last) + 1
end

def length_match?(result, num_of_digits)
  result.to_s.length == num_of_digits
end



p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847