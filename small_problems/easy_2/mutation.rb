array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
#  array 1 is an array of strings
array2 = []
# array2 is an empty array
array1.each { |value| array2 << value }
# push each element that is in array1 into array2 => the reference to the string is being copied not the string itself!!
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# destructively upcase each string in array1 if the string starts with C or S
puts array2
# array2 will print all strings, none of which are upcase-d

# Discussion

# Wait a minute! We changed Curly to CURLY, Shemp to SHEMP, and Chico to CHICO in array1. How'd those changes end up in array2 as well?

# The answer lies in the fact that the first each loop simply copies a bunch of references from array1 to array2. When that first loop completes, both arrays not only contain the same values, they contain the same String objects. If you modify one of those Strings, that modification will show up in both Arrays.

# If this answer surprises you, reread the section on Pass by Reference vs Pass by Value in Lesson 2 of Programming Foundations. To be successful with ruby, you must understand how values are passed around, and what mutation means for those values.

# Further Exploration

# How can this feature of ruby get you in trouble? How can you avoid it?

