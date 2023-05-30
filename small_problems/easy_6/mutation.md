# Question
What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
```

# Answer: 
array1 is a local variable assigned to an Array object containing Strings
array2 is initialized as an empty Array object
On line 7 `#each` is invoked on array1 with a block. A block parameter `value` is initialized that binds with the element in array1 on every iteration. Upon every iteration of array1 on line 7 the object referenced by `value` is concatenated to array2. 
On line 8, `#each` is invoked on array1 again. This time upon every iteration, the object referenced by `value` is destructively changed, (all caps) if it starts with a `'C'` or an `'S'`. 
On line 9 `#puts` is invoked with argument `array2`. The output will be:

```
['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']
```

# Further Exploration

How can this feature of ruby get you in trouble? How can you avoid it?


This feature can get you in trouble because you may make changes with the intention of only changing array2, not realizing that array1 is changing as well. This may cause the app to behave unexpectedly, or create bugs that are difficult to resolve. 
One way to avoid this is by creating a copy of the original object, and then concatenating the copy of the object (different object_id) to array2

