# Author: Alina Kovtun
# 
# Vasya stands in line with number of people p (including Vasya),
# but he doesn't know exactly which position he occupies.
# Find the number of different positions Vasya can occupy.
# Input
# As an input you have 3 numbers:
# 1. p - Total amount of people in the line;
# 2. bef - Number of people standing in front of him
# 3. aft - Number of people standing behind him

def where_is_he(p, bef, aft)
  if (p - bef - aft > 1)
    aft + 1
  else
    p - bef
  end
end
