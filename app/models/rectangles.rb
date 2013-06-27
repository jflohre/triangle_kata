class Rectangles < ActiveRecord::Base
  def type_of_rectangle(rectangle)
    # if string_for_top?(top) || string_for_bottom?(bottom) ||string_for_left?(left) || string_for_right?(right)
    #   "Can't have letters for sides"
    # elsif invalid_number?(top, bottom, left, right)
    #   "Sides can't be <= 0"
    if square?(rectangle)
      "Square"
    elsif rectangle?(rectangle)
      "Rectangle"
    else
      "Quadrilateral, but not a rectangle!"
    end
  end

  # def invalid_number?(top, bottom, left, right)
  #   top <= 0 || bottom <= 0 || left <= 0 || right <= 0
  # end 

  # def string_for_top?(top)
  #   top.instance_of? String 
  # end
  
  # def string_for_bottom?(bottom)
  #   bottom.instance_of? String
  # end

  # def string_for_left?(left)
  #   left.instance_of? String
  # end
  
  # def string_for_right?(right)
  #   right.instance_of? String
  # end
  
  def square?(rectangle)
    rectangle[0] == rectangle[1] && rectangle[1] == rectangle[2] && rectangle[2] == rectangle[3]
  end
  def rectangle?(rectangle)
    rectangle[0] == rectangle[1] && rectangle[2] == rectangle[3]
  end

end
