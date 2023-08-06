require 'date'

# def friday_13th(year)
#   calendar_start = Date.new(year) # start of the year
#   calendar_end = Date.new(year, -1, -1) # end of the year
#   # iterate over the year from calendar start to calendar end
#   calendar_start.step(calendar_end).select { |d| d.friday? && d.day == 13}.size
# end

##### LS SOLUTION ####


# def friday_13th(year)
#   unlucky_count = 0
#   thirteenth = Date.civil(year, 1, 13) #set date to first month and day 13
#   12.times do # iterate over the 12 months and check if it's Friday
#     unlucky_count += 1 if thirteenth.friday?
#     thirteenth = thirteenth.next_month
#   end
#   unlucky_count
# end
# #### END LS SOLUTION


# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

def five_fridays(year)
  month_start = Date.new(year)
  month_end = Date.new(year, 1, -1)
  five_friday_months = 0
  friday_count = 0
  12.times do 
    friday_count = month_start.step(month_end).select { |d| d.friday?}.count
    five_friday_months += 1 if friday_count == 5
    month_start = month_start.next_month
    month_end = month_end.next_month
  end
  five_friday_months
end

 p five_fridays(2001)
 p five_fridays(1982)
 p five_fridays(1996)