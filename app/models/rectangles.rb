class Rectangles < ActiveRecord::Base
  def type_of_rectangle(side1, side2, side3, side4)
    if string_for_sides?(side1, side2, side3, side4)
      "Can't have letters for sides"
    elsif invalid_number?(side1, side2, side3, side4)
      "Sides can't be <= 0"
    else
      true
    end
  end

  def invalid_number?(side1, side2, side3, side4)
    side1 <= 0 || side2 <= 0 || side3 <= 0 || side4 <= 0
  end 
  # def string_for_sides?(side1, side2, side3, side4)
  #   side1.instance_of? String || side2.instance_of? String 
  # end
end
