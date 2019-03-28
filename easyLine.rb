# Clculate the sum of the squares of the binomial coefficients on a given line with a function called easyline(n)
def easyline(n)
  n == 0 ? 1 : easyline(n-1)*(4*n-2)/n
end
