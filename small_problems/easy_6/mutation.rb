array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value.dup } # dup will create a shallow copy of the element
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
puts array1

p array1[1][1]#.object_id
p array2[1][1]#.object_id