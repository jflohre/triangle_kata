require 'spec_helper'

describe Polygon do
  let(:polygon) { polygon = Polygon.new}
  it 'should return a rectangle' do
      polygon.should be_an_instance_of Polygon
    end
  describe "not a true polygon" do 
# Less than 0 sides    
    it "should return 'Sides can't be <= 0' for a polygon with the sides [0,1,2,3]" do
      polygon.type_of_polygon([0,1,2,3]).should == "Sides can't be <= 0"
    end
    it "should return 'Sides can't be <= 0' for a polygon with the sides [4,1,2,3,0]" do
      polygon.type_of_polygon([4,1,2,3,0]).should == "Sides can't be <= 0"
    end
    it "should return 'Sides can't be <= 0' for a polygon with the sides [0,1,0,3]" do
      polygon.type_of_polygon([0,1,0,3]).should == "Sides can't be <= 0"
    end
    it "should return 'Sides can't be <= 0' for a polygon with the sides [1,1,3,3,4,4,0]" do
      polygon.type_of_polygon([1,1,3,3,4,4,0]).should == "Sides can't be <= 0"
    end
# Less than 0 sides    
    it "should return 'Can't have letters for sides' for a rectangle with the sides [1,one,2,3,4]" do
      polygon.type_of_polygon([1,'one',2,3,4]).should == "Can't have letters for sides"
    end
    it "should return 'Can't have letters for sides' for a rectangle with the sides [one,one,2,3,4]" do
      polygon.type_of_polygon(['one','one',2,3,4]).should == "Can't have letters for sides"
    end
    it "should return 'Can't have letters for sides' for a rectangle with the sides [1,2,2,3,4,five]" do
      polygon.type_of_polygon([1,2,2,3,4,'five']).should == "Can't have letters for sides"
    end
  end

end
