# 8 kyu Pole Vault Starting Marks
def starting_mark(height)
  ((height - 1.22) * 3.9341 + 8.27).round(2);
end

puts starting_mark(1.52)
# 9.45
puts starting_mark(1.83)
# 10.67
puts starting_mark(1.22)
# 8.27
puts starting_mark(2.13)
# 11.85
puts starting_mark(1.75)
# 10.36
