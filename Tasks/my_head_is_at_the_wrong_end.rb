# Author: Khrystyna Mandzii
# The function re-arrange the array so that the animal
# is the right way round (head, body, tail).

# fix_the_meerkat(arr = ["tail", "body", "head"])
# returns ["head", "body", "tail"]

def fix_the_meerkat(arr)
  arr.reverse
end

def run_task
  puts 'Enter "Tail Body Head"'
  input = gets.chomp.split(' ')
  fix_the_meerkat(input)
end
