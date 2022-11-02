# How would you order this array of number strings 
# by descending numeric value?

arr = ['10', '11', '9', '7', '8']
sorted = arr.sort do |a,b|
  b.to_i <=> a.to_i
end
# => ["11", "10", "9", "8", "7"]
# p sorted


