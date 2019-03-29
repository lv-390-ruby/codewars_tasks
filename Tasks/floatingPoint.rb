# Call this function interp:
# interp(f, l, u, n) -> [f(l), f(l + d), ..., f(u -d)]
# The n resulting values f(l), f(l + d), ..., f(u -d) will be **floored** to two decimals (except Shell and Nim: see below).
# For that you can use: floor(y * 100.0) / 100.0.
def interp(f, l, u, n)
  h = (u - l).fdiv n
  (0...n).map{|i| ((f[i * h + l]) * 100).floor / 100.0}
end
