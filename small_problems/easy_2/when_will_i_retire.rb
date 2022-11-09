# Build a program 
# that displays 
# when the user will retire 
# and how many years she has to work till retirement.

# Example:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

puts "What is your age? "
current_age = gets.chomp.to_i

puts "At what age would you like to retire? "
retirement_age = gets.chomp.to_i
years_til_retirement = retirement_age - current_age
puts ""
puts "It's #{Time.now.year}. You will retire in #{Time.now.year + years_til_retirement}."
puts "You have only #{years_til_retirement} years to go!"