#n^3 + (n-1)^3 + ... + 1^3 = m 
#The function found n and take arg m
#if such a n exists or -1 if there is no such n.

def find_nb(m)
  sum = 0
  x = 1
  while true
    sum += x ** 3
    if sum == m
      return x
      break
    elsif sum > m
      return -1
      break
    end
    x += 1
  end
end

