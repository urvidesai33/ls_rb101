def center_of(string)
  size = string.size
  if size.odd?
    string[(size / 2)]
  else
    string[size / 2 - 1] + string [size / 2]
  end  
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'