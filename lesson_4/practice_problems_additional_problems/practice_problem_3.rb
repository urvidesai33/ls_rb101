# Remove people with age 100 or greater
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.reject! { |_, age| age >= 100}
puts ages