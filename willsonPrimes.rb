def fact(num)
  Math.gamma(num + 1)
end

def willsons_prime(num)
  decimalpart = (fact(num - 1) + 1) % (num**2)

  if decimalpart.zero? && num != 1
    true
  else
    false
  end
end