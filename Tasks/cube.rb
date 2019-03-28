# Function n^3 + (n-1)^3 + ... + 1^3 = m
# The function found n and take arg m
# if such a n exists or -1 if there is no such n.

def find_nb(m)
  sum = 0
  x = 0
  loop do
    sum += x**3
    return x if sum == m
    return -1 if sum > m

    x += 1
  end
end
