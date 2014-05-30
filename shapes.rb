
# Revisit your Quadrilateral object hierarchy from yesterday. Add a way to:
# - Calculate the perimeter of every shape. 
# - Calculate the area of shapes with right angles: rectangles and squares.
# - Get the length of a single side of equilaterals: squares and rhombi.
 
# You’ll probably have to use super and Ruby modules. Use TDD to confirm 
# that all of your classes are working correctly. For example:


require "./Quadtests.rb"
include Quadtests


class Quadrilateral

  attr_accessor :sides
  
  def initialize
    @sides = 4
	end  
  
end
#Class ends ================================================


class Rectangle < Quadrilateral
	
  attr_accessor :base, :height

  def initialize(base, height)
    @base = base 
    @height = height
    super()
  end 

  def area
     @base * @height 
  end 

  def perimeter
    2 * (@base + @height)
  end

end
#Class ends ================================================


class Square < Rectangle

  attr_accessor :side

  def initialize(side)
    super(side, side)
    @side = side
  end

  def area
   (@side * @side)
  end

  def perimeter
     side*4
  end

end 
#Class ends ================================================


class Trapezoid < Quadrilateral

  attr_accessor :side1, :side2, :side3, :side4

	def initialize(side1, side2, side3, side4)
   @side1 = side1
   @side2 = side2
   @side3 = side3
   @side4 = side4
   super()
	end 

  def perimeter
     @side1 + @side2 + @side3 + @side4
  end

end
#Class ends ================================================


class Rhombus < Trapezoid

  attr_accessor :side

  def initialize(side)
    super(side, side, side, side)
    @side = side
  end

  def area
    @side * @side
  end

  def perimeter
    side*4
  end

end 
#Class ends ================================================


sides_test
rectangle_test
square_test
trap_test
rhombus_test

#YIELD METHOD FOR TESTING
# create a generic test that takes an object as an argument.
# that object has it's own paramters, which the test doesn't care about.
# rect.area == (rect.length * 5)