def negative(num)
  if num.negative?
    return num
  elsif num.positive?
    return -num
  else
    return 0
  end
end
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby