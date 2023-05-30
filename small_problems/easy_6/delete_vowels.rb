def remove_vowels(array)
  vowels = "AEIOUaeiou"
  p (array.map do |string|
    string.chars.delete_if { |char| vowels.chars.any? (char)}.join
  end)

end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
