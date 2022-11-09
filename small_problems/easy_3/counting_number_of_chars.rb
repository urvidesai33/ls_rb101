# Write a program that will 
# ask a user for an input of a word or multiple words 
# and give back the number of characters. 
# Spaces should not be counted as a character

puts "Please enter a word or multiple words: "
words = gets.chomp
characters = words.delete(" ")

number_of_characters = characters.chars.count
puts "There are #{number_of_characters} characters in \"#{words}\"."