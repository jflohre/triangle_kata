require 'spec_helper'

describe Polygon do
  let(:polygon) { polygon = Polygon.new}
  it 'should return a rectangle' do
      polygon.should be_an_instance_of Polygon
    end
end
