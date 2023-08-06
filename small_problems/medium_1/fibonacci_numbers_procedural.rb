# def fibonacci(nth)
#   fibs = [0, 1, 1]
#   count = fibs.size

#   loop do
#     fibs << fibs[count - 1] + fibs[count - 2]
#     count += 1
#     break if count >= nth
#   end
#   p count
#   p fibs.last
  
# end


###### LS SOLUTION ####

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

##### END LS SOLUTON ######
p fibonacci(3)
p fibonacci(20) == 6765
 p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501