
# Turn this array into a hash
#  keys are the names
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones = %w[Fred Barney Wilma Betty Pebbles BamBam]

# hash = {}
flintstones_hash = flintstones.each_with_object({}) do |key, hash|
                     hash[key] = flintstones.index(key)
                   end

puts flintstones_hash
