def average(integers)
  total = 0
  integers.each do |int|
    total += int
  end
  total.to_f / integers.size
end


##### LS SOLUTION #####
# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }
#   sum / numbers.count
# end
### END LS SOLUTION ###

puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40