# Determines start the approach at the best possible starting mark for a pole sticker.
# height - the vaulter's height in meters (which will always lie in a range between
# a minimum of 1.22 meters and a maximum of 2.13 meters).
# 1.22 - the minimum vaulter's height in meters.
# 8.27 - a vaulter with a height of 1.22 meters should start at 8.27 meters on the runway.
# 3.9341 - the constant offset involved.
# return - the best starting mark in meters, rounded to two decimal places.
def starting_mark(height)
  ((height - 1.22) * 3.9341 + 8.27).round(2)
end

