def greetings(name_array, occupation_hash)
  name_string = name_array.join(' ')
  puts "Hello, #{name_string}! Nice to have a #{occupation_hash[:title]} #{occupation_hash[:occupation]} around."
end
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })