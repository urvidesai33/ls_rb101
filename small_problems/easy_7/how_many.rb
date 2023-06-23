def count_occurrences(array)
  unique_array = array.uniq
  hash_tally = Hash.new(0)
  unique_array.each { |el| hash_tally[el] = array.count(el) }

  hash_tally.each do |key, value|
    puts key + " => " + value.to_s
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
count_occurrences(vehicles)