require 'pry'
class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end


  def kind
    if @s1 >= @s2 + @s3 || @s2 >= @s1 + @s3 || @s3 >= @s1 + @s2 || @s1 <= 0 || @s2 <= 0 || @s3 <= 0
      #error

      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message

      end
    elsif @s1 == @s2 && @s1 == @s3
      :equilateral
    elsif @s1 == @s2  || @s1 == @s3 || @s2 == @s3
      :isosceles
    else
      :scalene

    end
  end
end

class TriangleError < StandardError
 # triangle error code
 def message
   "Please enter valid lengths for a triangle where sides are larger than zero and two sides are always larger than another side."
 end
end
# r = Triangle.new(0, 5, 4)
# r.kind
