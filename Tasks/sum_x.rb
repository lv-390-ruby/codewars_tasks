# Let us call solve the function solve(m)
# which returns x such as U(n, x)
# goes to m when n goes to infinity.

def solve(m)
  function1 = (-2 * m - 1)
  discrim = function1**2 - 4 * m**2
  twice = (2 * m)
  discrim.zero? ? -function1 / twice : (-function1 - Math.sqrt(discrim)) / twice
end
