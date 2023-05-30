DEGREE = "\xC2\xB0"
MINUTE = "'"
SECONDS = '"'
CONVERSION_FACTOR = 60

def dms(float)
  until float >= 0 && float <= 360 do
    if float > 360
      float -= 360 
    elsif float < 0
      float += 360
    end
  end


  degrees = float.to_i
  minutes_float = (float - degrees) * CONVERSION_FACTOR
  minutes = minutes_float.to_i
  seconds = ((minutes_float - minutes) * CONVERSION_FACTOR).to_i

  degrees.to_s + DEGREE + sprintf("%02d", minutes) + MINUTE + sprintf("%02d", seconds) + SECONDS
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")
p dms(4020)
p dms(-555.56)