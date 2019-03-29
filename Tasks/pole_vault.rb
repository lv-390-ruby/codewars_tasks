# frozen_string_literal: true

# Author: Olena Niemova
# Determines start the approach at the best possible starting mark for a pole
# sticker.
# height - the vaulter's height in meters (which will always lie in a range
# between a minimum of 1.22 meters and a maximum of 2.13 meters).
# 1.22 - the minimum vaulter's height in meters.
# 8.27 - a vaulter with a height of 1.22 meters should start at 8.27 meters on
# the runway.
# 3.9341 - the constant offset involved.
# return - the best starting mark in meters, rounded to two decimal places.
MIN_HEIGHT = 1.22
START_METERS = 8.27
OFFSET = 3.9341
def pole_valut(height)
  ((height - MIN_HEIGHT) * OFFSET + START_METERS).round(2)
end

def parse_to_float(input)
  Float(input)
rescue StandardError
  nil
end

def run_task
  input = nil
  until input
    print 'Enter height in meters: '
    num = gets
    input = parse_to_float(num)
  end
  puts pole_valut(input)
end
