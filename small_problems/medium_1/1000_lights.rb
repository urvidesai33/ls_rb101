def light_toggle(n)

  lights_status = Hash.new(false)
  counter = 1..n
  1.upto(n) do |num| # initalize all values to false
    lights_status[num] = false
  end

  for count in counter do
    multiples = lights_status.select do |switch, status| # select the lights that are a mulitple of count
                  switch % count == 0 
                end
    # multiples.each do |switch, status|
    #     lights_status[switch] = !status
    # end
    lights_status.merge!(multiples) {|key, oldval, newval| newval = !oldval} # invert all the values in multiples and include back into original hash
  end
  print_light_status(lights_status)
end

def print_light_status(lights_status)
  lights_on = lights_status.select { |_switch, status| status == true}.keys
  lights_off = lights_status.select { |_switch, status| status == false}.keys

  lights_on_string = lights_on[0..-2].join(', ') +  " and " + lights_on.last.to_s
  lights_off_string = lights_off[0..-2].join(', ') + " and " + lights_off.last.to_s

  puts "lights " + lights_off_string + " are now off; " + lights_on_string + " are on."

end

#  p light_toggle(10)
  light_toggle(5)
#  p light_toggle(100)
#  p light_toggle(1000)
  light_toggle(15)