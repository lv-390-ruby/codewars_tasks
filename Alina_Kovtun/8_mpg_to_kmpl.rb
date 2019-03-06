IMPERIAL_GALLON_TO_LITRE = 4.54609188
MILE_TO_KILOMETER = 1.609344

def converter(mpg)
  kmpl = mpg / IMPERIAL_GALLON_TO_LITRE * MILE_TO_KILOMETER
  kmpl.round(2)
end

puts converter(12)  #4.25
puts converter(24)  #8.5
puts converter(36)  #12.74
