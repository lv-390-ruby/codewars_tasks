# Author: Pidtserkovnyi Vitalii

# willsons_prime(num) function checks if num is a willsons prime number
def willsons_prime(num)
  return false if num > 563

  (((1...num).inject(:*) + 1) % (num * num)).zero?
end

def run_task
  print 'Enter number to check if it is Willsons Prime: '
  temp = gets
  puts willsons_prime(temp.to_i)
end
