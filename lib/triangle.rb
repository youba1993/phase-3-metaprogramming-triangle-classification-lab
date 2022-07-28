class Triangle

  attr_reader :a , :b, :c

  def initialize( a, b, c)
    if a > 0 && b > 0 && c >0
    @a = a 
    @b = b
    @c = c
    else 
      raise TriangleError
    end
  end 

  def kind
    if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    else
       if @a == @b && @a == @c
         :equilateral
       elsif @a == @b || @a == @c || @b == @c
         :isosceles
       else
         :scalene
       end
     end
  end

  class TriangleError < StandardError
  end

end
