#Let us call solve the function solve(m) 
#which returns x such as U(n, x) 
#goes to m when n goes to infinity.

def solve(m)
  a = m
  b = -2 * m - 1
  c = m
  d = b ** 2 - 4 * a * c
  if d == 0
    return -b / (2 * a)
  else 
    x1 = (-b + Math.sqrt(d)) / (2 * a)
    x2 = (-b - Math.sqrt(d)) / (2 * a)
    return x1 < x2 ? x1 : x2
  end
end

