require 'spec_helper'

describe Rectangle do
  let(:rectangle) { rectangle = Rectangle.new}
  it 'should return a rectangle' do
      rectangle.should be_an_instance_of Rectangle
    end
#    describe "not a true rectangle" do 
# # Less than 0 sides    
#     it "should return 'Sides can't be <= 0' for a rectangle with the sides 0,1,2,3" do
#       rectangle.type_of_rectangle(0,1,2,3).should == "Sides can't be <= 0"
#     end
#     it "should return 'Sides can't be <= 0' for a rectangle with the sides 0,0,0,0" do
#       rectangle.type_of_rectangle(0,0,0,3).should == "Sides can't be <= 0"
#     end
#     it "should return 'Sides can't be <= 0' for a rectangle with the sides 1,0,2,3" do
#       rectangle.type_of_rectangle(1,0,2,3).should == "Sides can't be <= 0"
#     end
#     it "should return 'Sides can't be <= 0' for a triangle with the sides 1,1,-2,3" do
#       rectangle.type_of_rectangle(1,1,-2,3).should == "Sides can't be <= 0"
#     end
#     it "should return 'Sides can't be <= 0' for a triangle with the sides 1,1,2,-3" do
#       rectangle.type_of_rectangle(1,1,2,-3).should == "Sides can't be <= 0"
#     end
# # Letters for sides    
#     it "should return 'Can't have letters for sides' for a rectangle with the sides one,2,3,4" do
#       rectangle.type_of_rectangle('one',2,3,4).should == "Can't have letters for sides"
#     end
#     it "should return 'Can't have letters for sides' for a rectangle with the sides 1,two,3,4" do
#       rectangle.type_of_rectangle(1,'two',3,4).should == "Can't have letters for sides"
#     end
#     it "should return 'Can't have letters for sides' for a rectangle with the sides 1,2,three,4" do
#       rectangle.type_of_rectangle(1,2,'three',4).should == "Can't have letters for sides"
#     end
#     it "should return 'Can't have letters for sides' for a rectangle with the sides 1,2,3,four" do
#       rectangle.type_of_rectangle(1,2,3,'four').should == "Can't have letters for sides"
#     end
#   end
  describe 'square' do
    it "should return 'square' for [2,2,2,2]" do
      rectangle.type_of_rectangle([2,2,2,2]).should == "Square"
    end
    it "should return 'square' for (5,5,5,5)" do
      rectangle.type_of_rectangle([5,5,5,5]).should == "Square"
    end
  end
  describe 'rectangle' do
    it  "should return 'rectangle' for (2,2,5,5)" do
      rectangle.type_of_rectangle([2,2,5,5]).should == "Rectangle"
    end
    it  "should return 'rectangle' for (2,2,5,5)" do
      rectangle.type_of_rectangle([4,4,5,5]).should == "Rectangle"
    end
  end
  describe 'quadrilateral' do
    it "should return 'quadrilateral' for (1,2,3,4)" do
      rectangle.type_of_rectangle([1,2,3,4]).should == "Quadrilateral, but not a rectangle!"
    end
    it "should return 'quadrilateral' for (1,2,3,4)" do
      rectangle.type_of_rectangle([5,2,4,1]).should == "Quadrilateral, but not a rectangle!"
    end
  end
end
