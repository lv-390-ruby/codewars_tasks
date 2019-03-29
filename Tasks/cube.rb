# Function n^3 + (n-1)^3 + ... + 1^3 = m
# The function found n and take arg m
# if such a n exists or -1 if there is no such n.

def find_nb(sum_fun)
  sum = 0
  count = 0
  loop do
    sum += count**3
    return count if sum == sum_fun
    return -1 if sum > sum_fun

    count += 1
  end
end
