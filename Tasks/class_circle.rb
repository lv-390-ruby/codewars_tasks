require './class_point.rb'

# Class point need for method area_circle
class Circle
  attr_accessor :center, :radius
  def initialize(center, radius)
    @center = center
    @radius = radius
  end
end
