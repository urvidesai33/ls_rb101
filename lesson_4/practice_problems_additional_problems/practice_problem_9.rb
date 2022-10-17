# words = "the flintstones rock" would be:
# words = "The Flintstones Rock"
# Write your own version of the rails titleize implementation.

words = "the flintstones rock"
word_array = words.split.map! { |word| word.capitalize!}
p words = word_array.join(" ")