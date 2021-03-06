# Author: Alina Kovtun
#
# Calculate the volume of a cuboid.
# Input: length, width and the height of the cuboid.

def get_volume_of_cuboid(length, width, height)
  length * width * height
end

def run_task
  print "Length: "
  length = gets.chomp.to_i
  print "Width: "
  width = gets.chomp.to_i
  print "Height: "
  height = gets.chomp.to_i

  puts "The volume of cuboid is #{get_volume_of_cuboid(length, width, height)}"
end
