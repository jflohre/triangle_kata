class Polygon < ActiveRecord::Base
  def type_of_polygon(array)
    
    if string_for_side?(array)
      "Can't have letters for sides"
    elsif invalid_number?(array)
      "Sides can't be <= 0"
    else
      true
    end
  end

  def invalid_number?(array)
    array.any? { |side| side <=0 }
  end
  def string_for_side?(array)
    array.any? { |side| side.instance_of? String}
  end

end
