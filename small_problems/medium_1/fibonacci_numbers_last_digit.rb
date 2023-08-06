def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

# def fibonacci_last(nth) # Will take very long for the last 2 tests
#  fibonacci(nth).digits.first
# end


##### LS SOLUTION #####
def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end
#### END LS SOLUTION #####


# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# # p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# # p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# # p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(14)
# p fibonacci_last(13)
# p fibonacci_last(12)
# p fibonacci_last(11)
# p fibonacci_last(10)
# p fibonacci_last(9)
# p fibonacci_last(8)
# p fibonacci_last(7)
# p fibonacci_last(6)
# p fibonacci_last(5)
def printnums
  3.upto(500) do |n|
     p n
    p fibonacci_last(n)
  end
end

printnums

