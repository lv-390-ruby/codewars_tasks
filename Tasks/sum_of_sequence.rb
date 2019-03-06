# 7 kyu Sum of a sequence
def sequence_sum(begin_number, end_number, step)
  sum = 0
  if begin_number <= end_number
    begin_number.step(end_number, step) { |x| sum += x }
  end
  sum
end

puts sequence_sum(2, 6, 2)
# 12
puts sequence_sum(1, 5, 1)
# 15
puts sequence_sum(1, 5, 3)
# 5
puts sequence_sum(0, 15, 3)
# 45
puts sequence_sum(16, 15, 3)
# 0
puts sequence_sum(2, 24, 22)
# 26
puts sequence_sum(2, 2, 2)
# 2
