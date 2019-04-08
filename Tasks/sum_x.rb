# Let us call solve the function solve(sum_fun)
# which returns x such as U(n, x)
# goes to sum_fun when n goes to infinity.

def solve(sum_fun)
  formul = 2 + 1.0 / sum_fun
  (formul - (formul**2 - 4)**0.5) / 2
end

def run_task
  input = nil
  until input
    print 'Integer number > 0: '
    sum_fun = gets.to_i
    input = sum_fun
  end
  puts solve(input)
end
