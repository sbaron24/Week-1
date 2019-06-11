require "pry"
class BoundingArea
  def initialize(array_of_boxes)
    @array_of_boxes = array_of_boxes
  end

  def boxes_contain_point?(x, y)
    @array_of_boxes.any? { |box| box.contains_point?(x, y)}
  end

end
