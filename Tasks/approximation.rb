# Consider the function f: x -> sqrt(1 + x) - 1 at x = 1e-15.
# This function involves the subtraction of a pair of similar numbers when x is
# near 0 and the results are significantly erroneous in this region.
# Modify f(x) to give a good approximation of f(x) in the neigbourhood of 0.

# Used Maclaurin binomial series
def f(x)
  x / 2 - x**2 / 8 + x**3 / 16 - 5 * x**4 / 128
end

