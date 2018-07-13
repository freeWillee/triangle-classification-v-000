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
    if self.allPositiveSides?
      if (self.sideOne == self.sideTwo) && (self.sideTwo == sideThree)
        :equilateral
      elsif (self.sideOne == self.sideTwo) || (self.sideTwo == self.sideThree) || (self.sideOne == self.sideThree)
        :isosceles
      elsif (self.sideOne != self.sideTwo) && (self.sideTwo != self.sideThree) && (self.sideOne != self.sideThree)
        :scalene
      else
        begin
        rescue
        end
      end
  end

  def any_two_sides_equal?
    @array_of_sides.first == @array_of_sides
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


  def not_valid?
    @array_of_sides.any? {|side| side <= 0}
  end


  class TriangleError < StandardError
    def message
      "invalid triangle!"
    end
  end

end
