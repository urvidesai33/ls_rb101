# Write a method that counts the number of occurrences of each element in a given array.
# The words in the array are case-sensitive: 'suv' != 'SUV'. 
# Once counted, print each element alongside the number of occurrences.


def count_occurrences(list)
  list_count = {}
  list.each_with_object(list_count) do |item| 
    list_count[item] = list.count(item)
  end
  
  list_count.each { |item, count| puts "#{item} => #{count}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


 count_occurrences(vehicles)