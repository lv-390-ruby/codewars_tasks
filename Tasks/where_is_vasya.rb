# Author: Alina Kovtun
#
# Vasya stands in line with number of people p (including Vasya),
# but he doesn't know exactly which position he occupies.
# Find the number of different positions Vasya can occupy.
# Input
# As an input you have 3 numbers:
# 1. num - Number of people in the line;
# 2. bef - Number of people standing in front of him
# 3. aft - Number of people standing behind him

def where_is_he(num, bef, aft)
  if num - bef - aft > 1
    aft + 1
  else
    num - bef
  end
end

def run_task
  print 'Number of people in the line: '
  num = gets.chomp.to_i
  print 'Number of people standing in front of him: '
  bef = gets.chomp.to_i
  print 'Number of people standing behind him: '
  aft = gets.chomp.to_i
  puts "Vasya can occupy #{where_is_he(num, bef, aft)} positions"
end
