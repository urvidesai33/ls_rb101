def show_multiplicative_average(num_array)
  product = 1.000
  divisor = num_array.size#.to_f

  num_array.each do |num|
    product *= num
  end

  multi_avg = (product / divisor)
  format("%.3f", multi_avg)

end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667