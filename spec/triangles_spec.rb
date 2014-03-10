require ('rspec')
require ('triangles')

describe Triangle do
  it "initializes a new triangle with lengths of sides" do
    test_triangle = Triangle.new(3,2,2)
    test_triangle.should be_an_instance_of Triangle
  end
  it "determines whether the type of triangle is equilateral" do
  test_triangle = Triangle.new(3,3,3)
  test_triangle.triangle_type.should eq "Equilateral"
  end
  it "determines whether the type of triangle is isoceles" do
    test_triangle = Triangle.new(3,4,4)
    test_triangle.triangle_type.should eq "Isoceles"
  end
  it "determines whether the sides make an invalid triangle" do
    test_triangle = Triangle.new(1,1,6)
    test_triangle.triangle_type.should eq "Invalid Triangle"
  end
  it "determines whether the type of triangle is scalene" do
    test_triangle = Triangle.new(3,4,5)
    test_triangle.triangle_type.should eq "Scalene"
  end
end
