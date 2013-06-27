require 'spec_helper'

describe Triangles do
  let(:triangle) { triangle = Triangles.new}
  it 'should return a triangle' do
    triangle.should be_an_instance_of Triangles
  end
   # describe "not a true triangle" do 
# Less than 0 sides    
    # it "should return 'Side1 <= 0' for a triangle with the sides 0,1,2" do
    #   triangle.is_real_triangle?([0,1,2]).should == "Sides can't be less than or equal to 0"
    # end
    # it "should return 'Side1 <= 0' for a triangle with the sides 0,0,0" do
    #   triangle.is_real_triangle?([0,0,0]).should == "Sides can't be less than or equal to 0"
    # end
    # it "should return 'Side2 <= 0' for a triangle with the sides 1,0,2" do
    #   triangle.is_real_triangle?([1,0,2]).should == "Sides can't be less than or equal to 0"
    # end
    # it "should return 'Side3 <= 0' for a triangle with the sides 1,1,-2" do
#     #   triangle.is_real_triangle?([1,1,-2]).should == "Sides can't be less than or equal to 0"
#     # end
# # Letters for sides    
#     it "should return 'Can't have letters for sides' for a triangle with the sides one,2,2" do
#       triangle.is_real_triangle?('one',2,2).should == "Can't have letters for sides"
#     end
#     it "should return 'Can't have letters for sides' for a triangle with the sides 1,two,2" do
#       triangle.is_real_triangle?(1,'two',2).should == "Can't have letters for sides"
#     end
#     it "should return 'Can't have letters for sides' for a triangle with the sides one,2,three" do
#       triangle.is_real_triangle?(1,2,'three').should == "Can't have letters for sides"
#     end
#   end


  describe 'Equilateral' do
    it "should return 'Equilateral Triangle' for a triangle with the sides 5,5,5" do
      triangle.is_real_triangle?([5,5,5]).should == "Equilateral Triangle"
    end
    it "should return 'Equilateral Triangle' for a triangle with the sides 1,1,1" do
      triangle.is_real_triangle?([1,1,1]).should == "Equilateral Triangle"
    end
  end

  describe 'Isosceles' do
    it "should return 'Isosceles Triangle' for a triangle with the sides 2,5,5" do
      triangle.is_real_triangle?([2,5,5]).should == "Isosceles Triangle"
    end
    it "should return 'Isosceles Triangle' for a triangle with the sides 5,2,5" do
      triangle.is_real_triangle?([2,2,5]).should == "Isosceles Triangle"
    end
    it "should return 'Isosceles Triangle' for a triangle with the sides 5,2,5" do
      triangle.is_real_triangle?([5,2,5]).should == "Isosceles Triangle"
    end
  end

  describe 'Scalene' do
    it "should return 'Scalene Triangle' for a triangle with the sides 1,2,3" do
      triangle.is_real_triangle?([1,2,3]).should == "Scalene Triangle"
    end
  end
end
