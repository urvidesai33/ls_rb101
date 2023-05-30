#bannerizer.rb
# Write a method that will take a short line of text, and print it within a box.

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('To boldly go where no one has gone before.')
# +--+
# |  |
# |  |
# |  |
# +--+


# CHAR_1 = "+-"
# CHAR_2 = "-"
# CHAR_3 = "| "
# CHAR_4 = " "

# def print_top_bottom(size)
#   print CHAR_1 
#   size.times {print CHAR_2}
#   print CHAR_1.reverse
#   print "\n"
# end

# def print_sides(size)
#   print CHAR_3
#   size.times {print CHAR_4}
#   print CHAR_3.reverse
#   print "\n"
# end

# def print_string(words)
#   print CHAR_3
#   print words
#   print CHAR_3.reverse
#   print "\n"
# end

# def print_in_box(sentence)
#   string_size = sentence.length
#   print_top_bottom(string_size)
#   print_sides(string_size)
#   print_string(sentence)
#   print_sides(string_size)
#   print_top_bottom(string_size)
# end

def print_in_box(sentence)
  size = sentence.length
  top_bottom = "+#{"-" * (size + 2)}+"
  blank = "|#{" " * (size + 2)}|"
  
  puts top_bottom
  puts blank
  puts "| #{sentence} |"
  puts blank
  puts top_bottom
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('To boldly go where no one has gone before.')
print_in_box('')
