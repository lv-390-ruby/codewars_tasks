# frozen_string_literal: true

# Author: Olena Niemova
# Consider the function approximation: small_num -> sqrt(1 + small_num) - 1 at
# small_num = 1e-15.
# This function involves the subtraction of a pair of similar numbers when
# small_num is near 0 and the results are significantly erroneous in this region
# Modify approximation(small_num) to give a good approximation of
# approximation(small_num) in the neigbourhood of 0.
# Used Maclaurin binomial series
def approximation(small_num)
  small_num / 2 - small_num**2 / 8 + small_num**3 / 16 - 5 * small_num**4 / 128
end

def parse_to_float(input)
  Float(input)
rescue StandardError
  nil
end

def run_task
  input = nil
  until input
    print 'Enter very small number: '
    num = gets
    input = parse_to_float(num)
  end
  puts approximation(input)
end
