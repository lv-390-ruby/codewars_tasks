#The function return sum
#of following series upto
#nth term(params).
#Rule:
#return 2 decimal places as string
#if get 0 return 0.00
#given only natural number as arguments


def series_sum (count_iterarion)
  sum = 0.00
  1.upto(count_iterarion){ |i| sum += ( 1.0 / ( -2 + 3 * i ))}
  return "#{sprintf("%.2f", sum)}"
end

