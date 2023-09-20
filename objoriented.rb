class Square
  def initialize(w,h)
    @width, @height = w,h
  end

  def printHeight
    @height
  end
  def printWidth
    @width
  end


  def setWidth=(value)
    @width=value
  end
  def setHeight=(value)
    @height=value
  end
  def getArea
    @height*@width
  end
end


sq=Square.new(3,4)
#sq.setHeight=3
#sq.setWidth=4
x=sq.printHeight()
y=sq.printWidth()
puts "#{x}"
puts "#{y}"
puts sq.getArea()
sq.setWidth=10
sq.setHeight = 5
puts sq.getArea()
