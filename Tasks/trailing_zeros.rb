# Calculate the number of trailing zeros in a factorial of a given number
# 6! = 1 * 2 * 3 * 4 * 5 * 6 = 720 --> 1 trailing zero

def zeros(number)
  number < 5 ? 0 : (number / 5) + zeros(number / 5)
end

def run_task
  puts 'Enter the number'
  number = gets.to_i
  puts "#{zeros(number)} trailing zero"
end
