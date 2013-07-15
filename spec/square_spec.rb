require_relative "../lib/square.rb"

describe "Square" do
  
  square = Square.new 1, 1

  it "goes left, right, up, and down" do
    [:left, :right, :up, :down].each do |direction|
      square.respond_to?(direction).should be(true)
    end
  end

  it "can point to things" do
    square.point left: 'value'
    square.left.should eql('value')
  end
end
