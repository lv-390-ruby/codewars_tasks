# Author: Pidtserkovnyi Vitalii
# Each number should be formatted that
# it is rounded to two decimal places
def round_to_two(number)
  number.round(2)
end

def run_task
  print 'Enter float number to format it to two decimals: '
  temp = gets
  puts round_to_two(temp.to_f)
end
