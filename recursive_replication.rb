# The function should return an array containing
# repetitions of the number argument

# If the times argument is negative, return an empty array.

# replicate(3, 5) should return [5,5,5]

def replicate(times, number)
  times > 0 ? [number] + replicate(times - 1, number) : []
end

def run_task
  puts 'Enter the size of array'
  times = gets.to_i
  puts 'Enter the number that must be repeated'
  number = gets.to_i
  puts replicate(times, number).to_s
end
