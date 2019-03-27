#the function circleArea/CircleArea 
#which takes in a Circle object 
#and calculates the area of that circle.

def circle_area(circle)
  circle.radius**2*Math::PI
end

class Circle
  attr_accessor :center, :radius
  def initialize(center, radius) 
    @center = center 
    @radius = radius
  end
end

class Point
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x
    @y = y 
  end
end

