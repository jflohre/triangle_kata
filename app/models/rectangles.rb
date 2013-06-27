class Rectangles < ActiveRecord::Base
  def type_of_rectangle(top, bottom, left, right)
    if string_for_top?(top) || string_for_bottom?(bottom) ||string_for_left?(left) || string_for_right?(right)
      "Can't have letters for sides"
    elsif invalid_number?(top, bottom, left, right)
      "Sides can't be <= 0"
    elsif square?(top, bottom, left, right)
      "Square"
    elsif rectangle?(top, bottom, left, right)
      "Rectangle"
    else
      "Quadrilateral"
    end
  end

  def invalid_number?(top, bottom, left, right)
    top <= 0 || bottom <= 0 || left <= 0 || right <= 0
  end 

  def string_for_top?(top)
    top.instance_of? String 
  end
  
  def string_for_bottom?(bottom)
    bottom.instance_of? String
  end

  def string_for_left?(left)
    left.instance_of? String
  end
  
  def string_for_right?(right)
    right.instance_of? String
  end
  
  def square?(top, bottom, left, right)
    top == bottom && bottom == left && left == right
  end
  def rectangle?(top, bottom, left, right)
    top == bottom || left == right
  end

end
