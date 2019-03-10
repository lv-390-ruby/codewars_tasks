# Determines sum of a sequence of integers. If begin value is greater than the end, function should returns 0.
# begin_number - the start of the sequence.
# end_number - the end of the sequence.
# step - the step with which the numbers in the sequence are added.
# return - the sum of the sequence.
def sequence_sum(begin_number, end_number, step)
  sum = 0
  if begin_number <= end_number
    begin_number.step(end_number, step) { |x| sum += x }
  end
  sum
end

