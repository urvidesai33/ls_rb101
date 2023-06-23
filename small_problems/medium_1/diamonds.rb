def diamonds(grid_size)

  odds = (1..grid_size).select { |x| x.odd? }
  diamond_hash = {}
  odds.each do |num_stars|
    diamond_strings = []
    if num_stars > 1
      diamond_strings[1] = "*" + " " * (num_stars - 2) + "*"
    else
      diamond_strings[1] = "*"
    end
    diamond_strings[0] = " " * ((grid_size - num_stars) / 2)
    diamond_strings[2] = diamond_strings[0]
    diamond_hash[num_stars] = diamond_strings.join
  end
  print_diamond(odds, diamond_hash)
end

def print_diamond(odds, diamond_hash)
  diamond_hash.each do |key, value| # print top triangle
    puts value
  end

  if odds.size > 1 # print bottom triangle
    reverse_odds = odds.reverse[1..]
    reverse_odds.each do |odd|
    puts diamond_hash[odd]
    end
  end
end

##### LS SOLUTION #####
# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = '*' * number_of_stars
#   puts stars.center(grid_size)
# end

# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(0) { |distance| print_row(grid_size, distance) }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end
#### END LS SOLUTION ####

diamonds(1)
diamonds(5)
diamonds(9)
diamonds(31)