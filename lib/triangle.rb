class Triangle
  # write code here
  attr_accessor :array_of_sides

  def initialize(sideOne, sideTwo, sideThree)
    @array_of_sides = []
    @array_of_sides << sideOne
    @array_of_sides << sideTwo
    @array_of_sides << sideThree
  end

  def kind
    if self.valid?
      if self.any_two_sides_equal?
        :equilateral
      elsif self.any_two_sides_equal?
        :isosceles
      elsif self.all_unique_sides?
        :scalene
      else
        begin
          raise TriangleError
        rescue TriangleError => error
          puts error.message
        end
      end
  end

  #isosceles triangle definition
  def any_two_sides_equal?
    @array_of_sides[0] == @array_of_sides[1] ||
    @array_of_sides[0] == @array_of_sides[2] ||
    @array_of_sides[1] == @array_of_sides[2]
  end

  #Equilateral triangle defintion
  def all_sides_equal?
    anchor_side = @array_of_sides.first
    @array_of_sides.all? {|side| anchor_side == side}
  end

  #scalene triangle definition
  def all_unique_sides?
    @array_of_sides.uniq.size == 3
  end

  #non-negative test
  def not_valid?
    @array_of_sides.any? {|side| side <= 0}
  end


  class TriangleError < StandardError
    def message
      "invalid triangle!"
    end
  end

end
