module Quadtests

  def sides_test
    my_quad = Quadrilateral.new
    puts "\nA quadrilateral has #{my_quad.sides} sides."
    puts "\nTest to see if quadrilateral has #{my_quad.sides} sides:"
    puts my_quad.sides == 4
  end 
	
  def rectangle_test
    my_rect = Rectangle.new 4, 5 
    puts "\nA rectangle with base 4 and height 5 has area of "
    print my_rect.area
    print " and perimeter of "
    puts my_rect.perimeter
    puts "\nTest to see if area is #{my_rect.area} and perimeter is #{my_rect.perimeter}:"
    puts my_rect.area == 20
    puts my_rect.perimeter == 18
	end

  def square_test
    my_sq = Square.new 3
    puts "\nA square with side length of #{my_sq.side} has area of "
    print my_sq.area
    print " and perimeter of "
    puts my_sq.perimeter

    puts "\nTest to see if area is #{my_sq.area} and perimeter is #{my_sq.perimeter}"
    puts my_sq.area == 9
    puts my_sq.perimeter == 12
    puts "This square's side length is #{my_sq.side}."
   end


   def trap_test
    my_trap = Trapezoid.new 2,3,4,5
    puts "\nA trapezoid with sides of length #{my_trap.side1}, #{my_trap.side2}, #{my_trap.side3} \nand #{my_trap.side4} has a perimeter of #{my_trap.perimeter}."
    puts "\nTest to see if the trapezoid's perimeter is #{my_trap.perimeter}."
    puts my_trap.perimeter == 14
   end


   def rhombus_test
    my_rhombus = Rhombus.new 5
    puts "A rhombus has #{my_rhombus.sides} sides. A rhombus with side length of #{my_rhombus.side} has perimeter of #{my_rhombus.perimeter}."
    puts "\nTest to see if rhombus with sides of length #{my_rhombus.side} has perimeter #{my_rhombus.perimeter}:"
    puts my_rhombus.perimeter == 20
    puts "This rhombus's side length is #{my_rhombus.side}."
   end


   def area
    puts yield
   end

end 


