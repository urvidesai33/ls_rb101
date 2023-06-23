# def fizzbuzz(int1, int2)
#   numbers = (int1..int2).to_a

#   numbers.each do |num|
#     if num % 3 == 0 && num % 5 == 0
#       puts "FizzBuzz"
#     elsif num % 5 == 0
#       puts "Buzz"
#     elsif num % 3 == 0  
#       puts "Fizz"
#     else
#       puts num
#     end
#   end
# end




###### LS SOLUTION #######

def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ') # every output followed by comma, and not on new line
end

def fizzbuzz_value(number) # separate method to return the string replacement
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

###### END LS SOLUTION ########

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
