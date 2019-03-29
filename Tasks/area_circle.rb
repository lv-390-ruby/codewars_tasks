# The function circleArea
# take in a Circle object
# and calculates the area of that circle.
class Circle
  attr_accessor :radius
  def initialize(radius)
    @radius = radius
  end
end

def circle_area(circle)
  circle.radius**2 * Math::PI
end

def run_task
  input = nil
  until input
    print 'Integer radius: '
    input = gets.to_i
  end
  puts circle_area(Circle.new(input))
end
