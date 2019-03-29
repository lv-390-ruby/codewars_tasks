# Author: Pidtserkovnyi Vitalii
# You have a positive number n consisting of digits.
# You can do at most one operation:
# Choosing the index of a digit in the number,
# remove this digit at that index and insert it back
# to another place in the number.
# Doing so, find the smallest number you can get.
# Task: Return an array containing result ,removed digit index,
# insert place index
def smallest(num)
  res = [num]
  size = num.to_s.size
  size.times do |first|
    size.times do |second|
      digits = num.to_s
      digits.insert(second, digits.slice!(first))
      res = [digits.to_i, first, second] if digits.to_i < res.first
    end
  end
  res
end

def run_task
  print 'Enter number to find the smallest: '
  temp = gets
  print smallest(temp.to_i)
end
