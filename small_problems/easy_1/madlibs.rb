

def madlibs(noun, verb, adjective, adverb)  
  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

puts "Enter a noun: "
noun = gets.chomp!
puts "Enter a verb: "
verb = gets.chomp!
puts "Enter an adjective: "
adjective = gets.chomp!
puts "Enter an adverb: "
adverb = gets.chomp!

madlibs(noun, verb, adjective, adverb)