def triangle (a, b, c)
  sides = [a, b, c]
  triangle_type = :invalid
  return triangle_type if triangle_invalid?(a, b, c)

  case 
  when sides.all? { |side| side == a}
    triangle_type = :equilateral
  when sides.count(a) == 2 || sides.count(b) == 2 # 2 sides are equal
    triangle_type = :isosceles
  else
    triangle_type = :scalene
  end

  triangle_type
end

def triangle_invalid?(x, y, z)
  sides = [x, y, z].sort!
  return true if sides.any? { |side| side == 0}
  return true if sides[0] + sides[1] < sides[2]
  return false
end



p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid