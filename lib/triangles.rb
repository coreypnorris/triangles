class Triangle
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def triangle_type
    if @side_a >= (@side_b + @side_c) || @side_b >= (@side_a + @side_c) || @side_c >= (@side_a + @side_b)
       @type = "Invalid Triangle"
    elsif @side_a == @side_b && @side_a == @side_c
      @type = "Equilateral"
    elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
      @type = "Isoceles"
    elsif @side_a != @side_b && @side_a != @side_c && @side_b != @side_c
      @type = "Scalene"
    end
  end
end

