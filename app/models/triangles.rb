class Triangles < ActiveRecord::Base

  def is_real_triangle?(side1, side2, side3)
    if side1.instance_of? String
      "Can't have letters for sides"
    elsif side2.instance_of? String
      "Can't have letters for sides"
    elsif side3.instance_of? String
      "Can't have letters for sides"
    elsif invalid_number?(side1, side2, side3)
      "Sides can't be less than or equal to 0"
    elsif equilateral?(side1, side2, side3)
      "Equilateral Triangle"
    elsif isosceles?(side1, side2, side3)
      "Isosceles Triangle"
    else
      "Scalene Triangle"
    end
  end

  def invalid_number?(side1, side2, side3)
    side1 <= 0 || side2 <= 0 || side3 <= 0
  end

  def equilateral?(side1, side2, side3)
    side1 == side2 && side2 == side3
  end

  def isosceles?(side1, side2, side3)
    side1 == side2 || side1 == side3 || side2 == side3
  end


end
