# A UUID is a type of identifier often used as a way to uniquely identify items...
# which may not all be created by the same system. 
# That is, without any form of synchronization, 
# two or more separate computer systems can create new items
#  and label them with a UUID with no significant chance of stepping on each other's toes.

# It accomplishes this feat through massive randomization. 
# The number of possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, 
# and is typically broken into 5 sections like this 8-4-4-4-12 
# and represented as a string.
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

def generate_uuid
  hex_letters = ('a'.."f")
  hex_numbers = ('0'..'9')
  all_hex_array = hex_letters.to_a  + hex_numbers.to_a
  unformatted_uuid = ""
   
  32.times do
    hex_char = all_hex_array.sample
    unformatted_uuid = unformatted_uuid + hex_char
  end

  p unformatted_uuid

  #p unformatted_uuid.chars
  puts unformatted_uuid.chars[0..7].join + "-" + unformatted_uuid.chars[8..11].join + "-" + unformatted_uuid.chars[12..15].join + "-" + unformatted_uuid.chars[16..19].join + "-" + unformatted_uuid.chars[20..31].join
end

generate_uuid