You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

```ruby
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"
```

Will the returned string be the same object?

str.split --> turns the string into an array with each 'word' being an element of the array
str.split ---> ["hello", "world"]

```ruby
["hello", "world"].each do |word|
  word.reverse!
end
```

In this case `#each` returns the original calling array. However, `#reverse!` mutates the calling object in the `#each` block, `word`.
The return value of `#each` is the original array with mutated String objects.

```ruby
["olleh", "dlrow"].join
```

When `#join` is called on the returned Array object, a new String oject is created using the elements of the returned array. This new String object is the return value of the method.

The returned string is not the same object as the original String that was passed as an argument into the `#spin_me` method.
