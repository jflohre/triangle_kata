require 'spec_helper'

describe Rectangles do
  let(:rectangle) { rectangle = Rectangles.new}
  it 'should return a rectangle' do
      rectangle.should be_an_instance_of Rectangles
    end
   describe "not a true rectangle" do 
# Less than 0 sides    
    it "should return 'Sides can't be <= 0' for a rectangle with the sides 0,1,2,3" do
      rectangle.type_of_rectangle(0,1,2,3).should == "Sides can't be <= 0"
    end
    it "should return 'Sides can't be <= 0' for a rectangle with the sides 0,0,0,0" do
      rectangle.type_of_rectangle(0,0,0,3).should == "Sides can't be <= 0"
    end
    it "should return 'Sides can't be <= 0' for a rectangle with the sides 1,0,2,3" do
      rectangle.type_of_rectangle(1,0,2,3).should == "Sides can't be <= 0"
    end
    it "should return 'Sides can't be <= 0' for a triangle with the sides 1,1,-2,3" do
      rectangle.type_of_rectangle(1,1,-2,3).should == "Sides can't be <= 0"
    end
    it "should return 'Sides can't be <= 0' for a triangle with the sides 1,1,2,-3" do
      rectangle.type_of_rectangle(1,1,2,-3).should == "Sides can't be <= 0"
    end
# Letters for sides    
    it "should return 'Can't have letters for sides' for a rectangle with the sides one,2,3,4" do
      rectangle.type_of_rectangle('one',2,3,4).should == "Can't have letters for sides"
    end
    it "should return 'Can't have letters for sides' for a rectangle with the sides 1,two,3,4" do
      rectangle.type_of_rectangle(1,'two',3,4).should == "Can't have letters for sides"
    end

  end
end
