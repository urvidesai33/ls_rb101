#  Print all odd numbers from 1 to 99,
#  inclusive, 
# to the console, 
# with each number on a separate line.

num_array = (1..99).to_a
counter = 0

 loop do
   num = num_array[counter]
  # p num.odd?
  if num.odd? 
    puts num_array[counter] #
  end
  counter += 1
  break if counter >= 99
end


# LS Solution
value = 1
while value <= 99
  puts value
  value += 2
end