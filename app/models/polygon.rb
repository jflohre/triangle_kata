class Polygon

  def initialize(array=[])
    @array = array
  end

  def type_of_polygon
    if string_for_side?
      "Can't have letters for sides"
    elsif invalid_number?
      "Sides can't be <= 0"
    elsif @array.count == 2
      "Can't have only 2 sides"
    elsif @array.count == 3
      triangle = Triangle.new
      triangle.is_real_triangle?(@array)
      
    else
      true
    end
  end

  def invalid_number?
    @array.any? { |side| side <=0 }
  end
  def string_for_side?
    @array.any? { |side| side.instance_of? String}
  end

end
