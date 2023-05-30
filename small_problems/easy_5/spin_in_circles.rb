def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

text = "hello_world"
p text.object_id
p spin_me(text) # "olleh dlrow"
p spin_me("hello world").object_id