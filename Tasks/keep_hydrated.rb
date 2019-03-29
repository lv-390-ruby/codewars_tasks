# frozen_string_literal: true

# Author: Olena Niemova
# Determines the amount of drinking water while cycling (0.5 litres of water
# per hour).
# time - the time in hours.
# return - the number of litres rounded to the smallest value.
def keep_hydrated(time)
  (time * 0.5).floor
end

def parse_to_int(input)
  Integer(input)
rescue StandardError
  nil
end

def run_task
  input = nil
  until input
    print 'Enter time (number): '
    num = gets.chomp
    input = parse_to_int(num)
  end
  puts keep_hydrated(input)
end
