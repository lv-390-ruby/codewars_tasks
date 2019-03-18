#Complete the function which takes two arguments and returns all numbers
#which are divisible by given divisor. First argument is an array of 
#numbers and the second is the divisor.

def divisible_by(numbers, divisible)
  divisible_number=numbers.select{|x|x%divisible==0}
  if divisible_number.count!=0
    return divisible_number 
  else
    return 0
  end
end
divisible_by([1,2,3,4,5,6], 2)
divisible_by([1,2,3,4,5,6], 3)
divisible_by([0,1,2,3,4,5,6], 4)
divisible_by([0,1,2,3,4,5,6,7,8,9,10], 1)
divisible_by([0,1,2,3,4,5,6,7,8,9,10], 17)