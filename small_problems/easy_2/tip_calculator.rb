# Create a simple tip calculator. 
# The program should prompt for 
# a bill amount and a tip rate. 
# The program must compute 
# the tip and then 
# display both the tip and the total amount of the bill.

puts "What is the bill amount? "
bill_amount = gets.chomp.to_f
puts "What is the tip percentage? "
tip_rate = gets.chomp.to_f

tip_amount = (tip_rate / 100 * bill_amount).round(2)
total_bill = bill_amount + tip_amount



tip = sprintf("%0.2f", tip_amount)
total = sprintf("%0.2f", total_bill)
puts "The tip is: $#{tip}"
puts "The total is: $#{total}"