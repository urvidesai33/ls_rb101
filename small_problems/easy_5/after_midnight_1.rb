# The time of day can be represented as the number of minutes 
# before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.
# Hint: The Integer#divmod method and the % (modulo) operator
#  may prove useful in your solution. 
# You may also find Kernel#format handy for formatting your results.

# You may want to solve this problem for non-negative arguments 
# that are between 0 and 1439 first. 
# Once you've done that, try handling arguments that are greater 
# than 1439. Finally, solve it for negative values. 
# Think about how you might be able to simplify the final two parts. 
# (Hint: one day is 1440 minutes)

MIDNIGHT_MINUTES = 1440
MINUTES_IN_HOUR = 60
def time_of_day(mins)
  time_in_minutes = MIDNIGHT_MINUTES + mins
  hours, minutes = time_in_minutes.divmod(MINUTES_IN_HOUR)

  if hours == 24
    hours = 0
  elsif hours > 24
    until hours < 24
        hours -= 24
    end
  elsif hours < 0
    until hours > 0
      hours += 24
    end
  end

  sprintf("%02d:%02d", hours, minutes) 
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"