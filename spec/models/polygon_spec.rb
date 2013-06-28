require 'spec_helper'

describe Polygon do
  it 'should return a rectangle' do
    polygon = Polygon.new
      polygon.should be_an_instance_of Polygon
    end
  describe "not a true polygon" do 
    
# Less than 0 sides    
    it "should return 'Sides can't be <= 0' for a polygon with the sides [0,1,2,3]" do
      polygon = Polygon.new([0,1,2,3])
      polygon.type_of_polygon.should == "Sides can't be <= 0"
    end
    it "should return 'Sides can't be <= 0' for a polygon with the sides [4,1,2,3,0]" do
      polygon = Polygon.new([4,1,2,3,0])
      polygon.type_of_polygon.should == "Sides can't be <= 0"
    end
    it "should return 'Sides can't be <= 0' for a polygon with the sides [0,1,0,3]" do
      polygon = Polygon.new([0,1,0,3])
      polygon.type_of_polygon.should == "Sides can't be <= 0"
    end
    it "should return 'Sides can't be <= 0' for a polygon with the sides [1,1,3,3,4,4,0]" do
      polygon = Polygon.new([1,1,3,3,4,4,0])
      polygon.type_of_polygon.should == "Sides can't be <= 0"
    end
# Less than 0 sides    
    it "should return 'Can't have letters for sides' for a polygon with the sides [1,one,2,3,4]" do
      polygon = Polygon.new([1,'one',2,3,4])
      polygon.type_of_polygon.should == "Can't have letters for sides"
    end
    it "should return 'Can't have letters for sides' for a polygon with the sides [one,one,2,3,4]" do
      polygon = Polygon.new(['one','one',2,3,4])
      polygon.type_of_polygon.should == "Can't have letters for sides"
    end
    it "should return 'Can't have letters for sides' for a polygon with the sides [1,2,2,3,4,five]" do
      polygon = Polygon.new([1,2,2,3,4,'five'])
      polygon.type_of_polygon.should == "Can't have letters for sides"
    end
#Only 2 sides
    it "should return 'can't have only 2 sides' for a polygon with the sides [1,2]" do
      polygon = Polygon.new([1,2])
      polygon.type_of_polygon.should == "Can't have only 2 sides"
    end
    it "should return 'can't have only 2 sides' for a polygon with the sides [1,2]" do
      polygon = Polygon.new([4,4])
      polygon.type_of_polygon.should == "Can't have only 2 sides"
    end 
  end
  describe "Triangle" do 
    it "should return 'Equilateral Triangle' for a triangle with the sides [5,5,5]" do
      polygon = Polygon.new([5,5,5])
      polygon.type_of_polygon.should == "Equilateral Triangle"
    end
    it "should return 'Isosceles Triangle' for a triangle with the sides 5,2,5" do
      polygon = Polygon.new([5,2,5])
      polygon.type_of_polygon.should == "Isosceles Triangle"
    end
  end
end
