def get_grade(score1, score2, score3)
  letter_grade = ''
  grade_table = {"A" => (90..), "B" => (80...90), "C" => (70...80), "D" => (60...70), "F" => (0...60)}
  average = [score1, score2, score3].reduce(:+) / 3

  grade_table.each do |letter, range|
    if range.include?(average)
      letter_grade = letter
    end
  end
  letter_grade
end



##### LS SOLUTION ####
# def get_grade(s1, s2, s3)
#   result = (s1 + s2 + s3)/3

#   case result
#   when 90..100 then 'A'
#   when 80..89  then 'B'
#   when 70..79  then 'C'
#   when 60..69  then 'D'
#   else              'F'
#   end
# end

#### END LS SOLUTION ####
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(100, 101, 102) == 'A'