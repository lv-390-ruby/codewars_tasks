# Calculate the number of trailing zeros in a factorial of a given number.
# 12! = 479001600 --> 2 trailing zeros
# zeros(12) --> 2

def zeros(n)
  n < 5 ? 0 : (n / 5) + zeros(n / 5)
end
