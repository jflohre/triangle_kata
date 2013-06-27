require 'spec_helper'

describe TrianglesController do
  describe "not a true triangle" do 
    it "should return 'Can't have 0 as a length for a side' for a triangle with the sides 0,1,2"
    is_real_triangle?(0,1,2).should == true
  end
end
