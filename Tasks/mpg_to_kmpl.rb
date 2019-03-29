# Author: Alina Kovtun
#
# Get the number of kilometers per liter
# based on the number of miles per imperial gallon.
# Input: mpg - miles per imperial gallon
# Output: kmpl - kilometers per liter (rounded off to two decimal points)

IMPERIAL_GALLON_TO_LITRE = 4.54609188
MILE_TO_KILOMETER = 1.609344

def converter(mpg)
  kmpl = mpg / IMPERIAL_GALLON_TO_LITRE * MILE_TO_KILOMETER
  kmpl.round(2)
end

def run_task
  print 'Enter the amount of miles per imperial gallon: '
  mpg = gets.chomp.to_f
  puts "#{mpg} miles per imperial gallon = #{converter(mpg)} km per liter"
end
