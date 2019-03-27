# Function fact(num) calculates the factorial of 'num'
def fact(num)
  Math.gamma(num + 1)
end

# willsons_prime(num) function checks if num is a willsons prime number
# num == willsons prime number if ((num - 1)! + 1) % (num ** 2) is zero
def willsons_prime(num)
  decimalpart = (fact(num - 1) + 1) % (num**2)

  if decimalpart.zero? && num != 1
    true
  else
    false
  end
end
