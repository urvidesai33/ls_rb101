# Create a hash that expresses the frequency with which each letter occurs in this string:
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
statement = "The Flintstones Rock"

statement.delete!(" ")

letters = statement.chars

letter_count_hash = {}
letters.each_with_object(letter_count_hash) do | letter, hash |
  hash[letter] = letters.count(letter)
end

p letter_count_hash.sort_by { |k, v| k}