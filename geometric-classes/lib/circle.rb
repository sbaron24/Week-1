class Circle
  PI = Math::PI

  attr_reader :x, :y, :radius
  def initialize(radius, x = 0, y = 0)
    @radius = radius
    @x = x
    @y = y
  end

  def perimeter
    2*PI*@radius
  end

  def diameter
    2*@radius
  end

  def area
    PI*@radius**2
  end

end
