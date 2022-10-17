# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


flintstones.each_with_index { |name, index| flintstones[index] = name[0,3] } 
p flintstones