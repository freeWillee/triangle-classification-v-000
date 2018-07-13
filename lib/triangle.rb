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

  end

  def allPostiveSides?
    self.sideOne > 0 && self.sideTwo > 0 && self.sideThree > 0
  end

  class TriangleError < StandardError
    def message
      "invalid triangle!"
    end
  end
end
