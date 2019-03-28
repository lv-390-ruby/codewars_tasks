# Author: Alina Kovtun
#
# A prime gap of length 'last' is a run of last-1 consecutive composite numbers
# between two successive primes
#
# parameters:
# gap (integer >= 2) which indicates the gap we are looking for
# first (integer > 2) which gives the start of the search (first inclusive)
# last (integer >= first) which gives the end of the search (last inclusive)
#
# The function should return the first pair of two prime numbers spaced
# with a gap of gap between the limits first, last if these numbers exist
# otherwise nil

def gap(gap, first, last)
  (first..last).each do |num|
    if prime?(num) && prime?(num + gap) && no_primes?(num, num + gap)
      return [num, num + gap]
    end

    num += gap
  end

  nil
end

def prime?(num)
  (2..Math.sqrt(num.to_f)).none? { |i| (num % i).zero? }
end

def no_primes?(first, last)
  ((first + 1)...last).none? { |num| prime?(num) }
end

def run_task
  print 'A prime gap: '
  gap = gets.chomp.to_i
  print 'The start of the search: '
  first = gets.chomp.to_i
  print 'The end of the search: '
  last = gets.chomp.to_i
  puts "The first 2 prime numbers spaced with a gap of #{gap}\
  between the limits #{first} and #{last} are #{gap(gap, first, last)}"
end
