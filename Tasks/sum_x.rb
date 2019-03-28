# Let us call solve the function solve(sum_fun)
# which returns x such as U(n, x)
# goes to sum_fun when n goes to infinity.

def solve(sum_fun)
  function1 = (-2 * sum_fun - 1)
  discrim = function1**2 - 4 * sum_fun**2
  twice = (2 * sum_fun)
  discrim.zero? ? -function1 / twice : (-function1 - Math.sqrt(discrim)) / twice
end
