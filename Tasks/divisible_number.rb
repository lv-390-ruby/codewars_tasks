#Complete the function which takes two arguments and returns all numbers
#which are divisible by given divisor. First argument is an array of 
#numbers and the second is the divisor.

def divisible_by(numbers, divisible)
  divisible_number = numbers.select{ |x| x % divisible == 0 }
  divisible_number == 0 ? 0 : divisible_number
end
