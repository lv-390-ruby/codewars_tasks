# Author : Natalia Kozoriz
# Given an array of integers.
# Return an array, where the first element is the count of
# positives numbers and the second element is sum of negative numbers.
# If the input array is empty or null, return an empty array.
def count_positives_sum_negatives(lst)
  return [] if lst.nil? || lst.empty?

  [lst.reject { |x| x < 1 }.count, (lst.reject { |x| x > -1 }).sum]
end

def run_task
  print 'Enter array of numbers: (without [], only numbers)'
  lst = gets.chomp.split(',').map { |s| s.to_i }
end