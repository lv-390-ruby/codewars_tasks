# Complete the function which takes two arguments and returns all numbers
# which are divisible by given divisor. First argument is an array of
# numbers and the second is the divisor.

def divisible_by(numbers, divisible)
  numbers.select { |x| (x % divisible).zero? }
end

def run_task
  input = nil
  until input
    print 'Array integer number: '
    input = gets.chomp
    array = parse_to_array(input)
    print 'Integer number: '
    divisible = gets.to_i
  end
  puts divisible_by(array, divisible)
end

def parse_to_array(input)
  array = input.delete(' ')
  array.each_char.map(&:to_i)
rescue StandardError
  nil
end
