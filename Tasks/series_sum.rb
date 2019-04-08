# The function return sum
# of following series upto
# Rule:
# return 2 decimal places as string
# if get 0 return 0.00
# given only natural number as arguments

def series_sum(count_iterarion) 
  sum = (1..count_iterarion).inject { |sum, count| sum + (1.0 / (- 2 + 3 * count)) }
  format('%.2f', sum)
end

def run_task
  input = nil
  until input
    print 'Natural Numbers: '
    sum_fun = gets
    input = sum_fun.to_i
  end
  puts series_sum(input)
end
