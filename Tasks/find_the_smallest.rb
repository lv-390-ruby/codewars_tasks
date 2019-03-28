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
      x = digits.slice!(first)
      digits.insert(second, x)
      res = [digits.to_i, first, second] if digits.to_i < res.first
    end
  end
  res
end
