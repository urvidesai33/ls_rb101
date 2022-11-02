# Build a program that asks a user for 
# the length and width of a room 
# in meters 
# and then displays the area of the room 
# in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

puts "Enter the length of the room (m): "
length = gets.chomp.to_i
puts "Enter the width of the room (m): "
width = gets.chomp.to_i

area_sq_meters = length * width
area_sq_feet = area_sq_meters * 10.7639

puts "The area of the room is #{area_sq_meters} sq. meters (#{area_sq_feet} sq feet)."
