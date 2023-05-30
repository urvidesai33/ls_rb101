BLANKS = " "
STARS = "*"

# def bottom_right_triangle(int)
#   counter = 1
#   loop do
#     puts  BLANKS * (int - counter) + STARS * counter 
#     counter += 1 
#     break if counter > int
#   end
# end

# def top_left_triangle(int)
#   counter = int
#   loop do
#     puts  (STARS * counter) + BLANKS * (int - counter)
#     counter -= 1 
#     break if counter == 0
#   end
# end
def triangle(size, angle_position)


  case angle_position
    when 'top_left'
      size.downto(1) { |n| puts "*" * n }
    
    when 'top_right'
      size.downto(1) { |n| puts ("*" * n).rjust(size, ' ')}
    
    when 'bottom_left'
      1.upto(size) { |n| puts "*" * n}

    when 'bottom_right'
      1.upto(size) { |n| puts ("*" * n).rjust(size, ' ')}
  end
end

triangle(3, 'top_left')

triangle(3, 'top_right')
triangle(3, 'bottom_left')
triangle(3, 'bottom_right')