# 8 kyu Keep Hydrated!
def litres(time)
  (time * 0.5).floor
end

puts litres(2)
# 1
puts litres(10)
# 5
puts litres(1.4)
# 0
puts litres(12.3)
# 6
puts litres(1787)
# 893
puts litres(0)
# 0
puts litres(5.5)
# 2
