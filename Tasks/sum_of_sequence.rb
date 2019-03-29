# frozen_string_literal: true

# Author: Olena Niemova
# Determines sum of a sequence of integers. If begin value is greater than the
# end, function should returns 0.
# begin_number - the start of the sequence.
# end_number - the end of the sequence.
# step - the step with which the numbers in the sequence are added.
# return - the sum of the sequence.
def sum_of_sequence(begin_number, end_number, step)
  begin_number.step(end_number, step).reduce(0, :+)
end

def parse_to_int(input)
  Integer(input)
rescue StandardError
  nil
end

def run_task
  input1, input2, input3 = nil
  until input1 && input2 && input3
    print 'Begin number: '
    input1 = parse_to_int(gets)
    print 'End number: '
    input2 = parse_to_int(gets)
    print 'Step: '
    input3 = parse_to_int(gets)
  end
  puts sum_of_sequence(input1, input2, input3)
end
