require_relative 'table.rb'
class ToyRobot

 def initialize(x,y)
   @x_location = 0
   @y_location = 0
   @table = Table.new(x,y)
 end

 def place(x,y,f)
   @x_location = x
   @y_location = y
   @facing = f
 end

 def move
   if @facing == "north"
       if @y_location == @table.height
          @y_location
       else
          @y_location += 1
       end
   elsif @facing == "south"
       if @y_location == 0
          @y_location
       else
          @y_location -= 1
       end
   elsif @facing == "west"
       if @x_location == @table.width
          @x_location
       else
          @x_location += 1
       end
   elsif @facing == "east"
       if @x_location == 0
          @x_location
       else
          @x_location -= 1
       end
   end
 end

 def left
   if @facing == "north"
      @facing = "east"
   elsif @facing == "south"
      @facing = "west"
   elsif @facing == "east"
      @facing = "south"
   else
      @facing = "north"
   end
 end

 def right
   if @facing == "north"
      @facing = "west"
   elsif @facing == "south"
      @facing = "east"
   elsif @facing == "east"
      @facing = "north"
   else
      @facing = "south"
   end
 end

 def report
  "I AM ON #{@x_location}, #{@y_location} and #{@facing}"
 end


end
