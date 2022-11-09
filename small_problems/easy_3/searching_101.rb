# Write a program 
# that solicits 6 numbers from the user, 
# then prints a message that describes 
# whether or not the 6th number appears 
# amongst the first 5 numbers.

first_five_numbers = []
(1..5).each do |i|
  case i 
  when 1
    puts "==> Enter the #{i}st number:"
    first_five_numbers << gets.chomp.to_i
  when 2
    puts "==> Enter the #{i}nd number:"
    first_five_numbers << gets.chomp.to_i
  when 3
    puts "==> Enter the #{3}rd number:"
    first_five_numbers << gets.chomp.to_i
  else
    puts "==> Enter the #{i}th number:"
    first_five_numbers << gets.chomp.to_i
  end
end

puts "==> Enter the last number:"
last = gets.chomp.to_i
if first_five_numbers.any? { |int| int == last }
  puts "The number #{last} appears in #{first_five_numbers}."
else
  puts "The number #{last} does not appear in #{first_five_numbers}."
end
