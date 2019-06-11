class Square
  attr_reader :x, :y

  def initialize(side, x = 0, y = 0)
    @side = side
    @x = x
    @y = y
  end

  def length
    @side
  end

  def width
    @side
  end

  def diameter
    @side*2**(1/2.to_f)
  end

  def perimeter
    4*@side
  end

  def area
    @side**2
  end

  def contains_point?(x, y)
    (x >= @x - @side/2.to_f) && (x <= @x + @side/2.to_f) &&
    (y >= @y - @side/2.to_f) && (y <= @y + @side/2.to_f)
  end
  binding.pry
end
