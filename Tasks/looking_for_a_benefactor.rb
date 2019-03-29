# Author: Pidtserkovnyi Vitalii
# The function new_avg(arr, newavg) returns the
# expected donation (rounded up to the next integer)
# that will permit to reach the average newavg.
# if the last donation be a <= 0 function will throw an error

# ceil Returns the smallest Integer greater than or equal to float.
def new_avg(arr, newavg)
  temp = newavg * (arr.length + 1)
  arr.each { |x| temp -= x }
  raise DomainError if temp < 0

  temp.ceil
end

def run_task
  print 'Please enter array: '
  str = gets
  arr = str.split(' ').map(&:to_i)
  print 'Please enter new avg: '
  newavg = gets
  newavg = newavg.to_i
  puts "Expected donation: #{new_avg(arr, newavg)}"
end
