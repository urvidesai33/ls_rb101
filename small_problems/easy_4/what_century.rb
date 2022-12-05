# Write a method that takes a year as input 
# and returns the century. 
# The return value should be a string 
# that begins with the century number,
#  and ends with st, nd, rd, or th as appropriate for that number.


# New centuries begin in years that end with 01. 
# So, the years 1901-2000 comprise the 20th century.

def century(year)
  quotient, remainder = year.divmod(100)
  if remainder > 0
    century = quotient + 1
  else 
    century = quotient
  end

  if century.to_s.split('')[-2] != "1"
    case century.to_s.split('').last
    when '1'
      century.to_s + 'st'
    when '2'
      century.to_s + 'nd'
    when '3'
      century.to_s + 'rd'
    else
      century.to_s + 'th'
    end
  else
      century.to_s + 'th'
  end

end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'