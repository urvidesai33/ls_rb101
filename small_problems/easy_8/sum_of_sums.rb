def sum_of_sums(num_array)
  sum_array = []
  sub_sum = 0
  
  num_array.each do |num|
    sub_sum += num
    sum_array << sub_sum
  end

  sum_array.reduce(:+)
end

############ LS SOLUTION 1 ##############
def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end
######### END LS SOLUTION 1 ###############


############ LS SOLUTION 2 ################
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end


########## END LS SOLUTION 2 ###############

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

