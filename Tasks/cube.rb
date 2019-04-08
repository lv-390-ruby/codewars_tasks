# Function n^3 + (n-1)^3 + ... + 1^3 = m
# The function found n and take arg m
# if such a n exists or -1 if there is no such n.

def find_nb(sum_fun)
  count = 1
  sum = 1
  while sum < sum_fun
   count += 1
   sum += count**3
  end
  sum == sum_fun ? count : -1
end

def run_task
  input = nil
  until input
    print 'Positiv integer number: '
    num = gets.to_i
    input = num
  end
  puts find_nb(input)
end
