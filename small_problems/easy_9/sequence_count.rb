def sequence(count, num)
  numbers = []

  for i in 1..count
    numbers << num * i 
  end
  numbers
end

##### LS SOLUTION 1 ######
# def sequence(count, first)
#   sequence = []
#   number = first

#   count.times do
#     sequence << number
#     number += first
#   end

#   sequence
# end
### END LS SOLUTION 1 ###


##### LS SOLUTION 2 #####
  # def sequence(count, first)
  #   (1..count).map { |value| value * first }
  # end
## END LS SOLUTION 2 #####




p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []