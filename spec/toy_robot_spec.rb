require './toy_robot.rb'

RSpec.describe ToyRobot do
     describe "#place" do
         it 'responds to the place method' do
           robot = ToyRobot.new(4,4)
           expect {robot.place(1, 1,"north")}.not_to raise_error
         end

         it 'places the robot in the location' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"north")

           expect(robot.report).to eq("I AM ON 1, 1 and north")
         end
     end

    describe "#report" do
         it 'report its position' do
           robot = ToyRobot.new(4,4)
           robot.place(0,0,"north")

           expect(robot.report).to eq("I AM ON 0, 0 and north")
         end
    end

    describe "#move" do
         it 'move it to north' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"north")
           robot.move
           robot.report
           expect(robot.report).to eq("I AM ON 1, 2 and north")
         end

         it 'move it to east' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"east")
           robot.move
           robot.report
           expect(robot.report).to eq("I AM ON 0, 1 and east")
         end

         it 'move it to west' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"west")
           robot.move
           robot.report
           expect(robot.report).to eq("I AM ON 2, 1 and west")
         end

         it 'move it to south' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"south")
           robot.move
           robot.report
           expect(robot.report).to eq("I AM ON 1, 0 and south")
         end

      describe "#not to fall down" do

         it 'move it to south' do
           robot = ToyRobot.new(4,4)
           robot.place(1,0,"south")
           robot.move
           robot.report
           expect(robot.report).to eq("I AM ON 1, 0 and south")
         end

         it 'move it to north' do
           robot = ToyRobot.new(4,4)
           robot.place(1,4,"north")
           robot.move
           robot.report
           expect(robot.report).to eq("I AM ON 1, 4 and north")
         end

         it 'move it to west' do
           robot = ToyRobot.new(4,4)
           robot.place(4,0,"west")
           robot.move
           robot.report
           expect(robot.report).to eq("I AM ON 4, 0 and west")
         end

         it 'move it to east' do
           robot = ToyRobot.new(4,4)
           robot.place(0,0,"east")
           robot.move
           robot.report
           expect(robot.report).to eq("I AM ON 0, 0 and east")
         end
       end

       describe "#change the direction" do
         it 'south to left' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"south")
           robot.move
           robot.left
           robot.report
           expect(robot.report).to eq("I AM ON 1, 0 and west")
         end

         it 'south to right' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"south")
           robot.move
           robot.right
           robot.report
           expect(robot.report).to eq("I AM ON 1, 0 and east")
         end

         it 'west to left' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"west")
           robot.move
           robot.left
           robot.report
           expect(robot.report).to eq("I AM ON 2, 1 and north")
         end

         it 'west to right' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"west")
           robot.move
           robot.right
           robot.report
           expect(robot.report).to eq("I AM ON 2, 1 and south")
         end

         it 'east to left' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"east")
           robot.move
           robot.left
           robot.report
           expect(robot.report).to eq("I AM ON 0, 1 and south")
         end

         it 'east to right' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"east")
           robot.move
           robot.right
           robot.report
           expect(robot.report).to eq("I AM ON 0, 1 and north")
         end

         it 'north to left' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"north")
           robot.move
           robot.left
           robot.report
           expect(robot.report).to eq("I AM ON 1, 2 and east")
         end

         it 'north to right' do
           robot = ToyRobot.new(4,4)
           robot.place(1,1,"north")
           robot.move
           robot.right
           robot.report
           expect(robot.report).to eq("I AM ON 1, 2 and west")
         end

         it 'example 3' do
           robot = ToyRobot.new(4,4)
           robot.place(1,2,"east")
           robot.move
           robot.move
           robot.left
           robot.move
           robot.report
           expect(robot.report).to eq("I AM ON 0, 1 and south")
         end
       end
    end
end
