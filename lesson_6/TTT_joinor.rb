# Currently, we're using the Array#join method, which can only insert a delimiter between the array elements, and isn't smart enough to display a joining word for the last element.

def joinor (array, mark = ', ', word = 'or')
  case array.size
  when 0
    " "
  when 1
    array.first.to_s
  else
    array[0..array.size - 2].join(mark) + " " + 
    word + " " + array.last.to_s
  end
end

p joinor([])
p joinor([2])
p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

