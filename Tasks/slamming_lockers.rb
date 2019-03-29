# Author: Natalia Kozoriz
# The goal of this kata is to determine which lockers are open at the end of Johnny's running.
# The program accepts an integer giving the total number of lockers, and should output an array filled with the locker numbers of
# those which are open at the end of his run.

def locker_run x
  (1..Math.sqrt(x)).map { |i| i * i}
end

def run_task
  print 'Enter total number of lockers:'
  x = gets.chomp.to_i
  puts "Here is an array filled with the locker numbers of
  those which are open at the end of his run : #{locker_run(x)}"
end
