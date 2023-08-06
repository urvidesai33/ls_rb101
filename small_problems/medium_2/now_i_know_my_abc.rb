LETTER_BLOCK = {"B" => "O",  
  "X"=>"K",  "D"=>"Q",  "C"=>"P", "N"=>"A",
  "G"=>"T",   "R"=>"E",  "F"=>"S",  "J"=>"W", "H"=>"U",
  "V"=>"I",  "L"=>"Y" ,  "Z"=>"M"}


def block_word?(word)
  word.upcase!
  last = word.size - 1
  word_array = word.chars
 
  word_array.each_with_index do |letter, index| 
    remaining = word_array[index + 1..last]

    if remaining.any?(letter) || remaining.any?(LETTER_BLOCK[letter]) || remaining.any?(LETTER_BLOCK.key(letter))
      return false
    end
  end
  true
end


#### LAUNCH SCHOOL SOLUTION ####
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 } # Refer to documentation about #count for String class
end
##### END LS SOLUTION #######

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true