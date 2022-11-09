# Write a program that 
# prompts the user for two positive integers, 
# and then prints the results of the following operations 
# on those two numbers: 
# addition, subtraction, product, quotient, remainder, and power. 
# Do not worry about validating the input.
nums =[]
puts "==> Enter the first number: "
nums << gets.chomp.to_i
puts "==> Enter the second number: "
nums << gets.chomp.to_i

operations = [:+, :-, :*, :/, :%, :**]

operations.each do |operand| 
 #puts nums.inject(operand)
 puts "==> #{nums[0]} #{operand} #{nums[1]} = #{nums.inject(operand)}"
end
