class Triangles < ActiveRecord::Base

  def is_real_triangle?(triangle)
    # if side1.instance_of? String
    #   "Can't have letters for sides"
    # elsif side2.instance_of? String
    #   "Can't have letters for sides"
    # elsif side3.instance_of? String
    #   "Can't have letters for sides"
    # elsif invalid_number?(side1, side2, side3)
    #   "Sides can't be less than or equal to 0"
    if equilateral?(triangle)
      "Equilateral Triangle"
    elsif isosceles?(triangle)
      "Isosceles Triangle"
    else
      "Scalene Triangle"
    end
  end

  # def invalid_number?(side1, side2, side3)
  #   side1 <= 0 || side2 <= 0 || side3 <= 0
  # end

  def equilateral?(triangle)
    triangle[0] == triangle[1] && triangle[1] == triangle[2]
  end

  def isosceles?(triangle)
    triangle[0] == triangle[1] || triangle[0] == triangle[2] || triangle[1] == triangle[2]
  end


end
