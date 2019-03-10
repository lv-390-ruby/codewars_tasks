# Determines the amount of drinking water while cycling (0.5 litres of water per hour).
# time - the time in hours.
# return - the number of litres rounded to the smallest value.
def litres(time)
  (time * 0.5).floor
end

