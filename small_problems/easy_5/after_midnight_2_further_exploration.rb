require 'time'

def after_midnight(time_string)
  time = Time.parse(time_string)
  total_minutes = time.hour * 60 + time.min
  

end

def before_midnight(time_string)
  
  hours, minutes = Time.parse(time_string).to_s.split(" ")[1][0...-3].split(":").map(&:to_i)
  total_minutes = hours * 60 - minutes

end

p after_midnight('00:00') == 0
p before_midnight('00:00')== 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0