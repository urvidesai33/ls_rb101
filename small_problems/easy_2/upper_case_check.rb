def uppercase?(string)
  string_array = string.chars
  if string_array.any? { |char| char.ord > 97 && char.ord < 123}
    false
  else
    true
  end
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true