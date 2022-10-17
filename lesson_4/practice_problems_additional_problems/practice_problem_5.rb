# Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
i = nil
flintstones.each_with_index do |name, index| 
    i = flintstones.index(name)if name.start_with?("Be")


end
p i