# Build a program that randomly generates 
# and prints Teddy's age. 
# To get the age, 
# you should generate a random number between 20 and 200.

puts "Enter a name: "
name = gets.chomp.capitalize!
age = rand(20..200)
puts "#{name} is #{age} years old."