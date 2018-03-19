# Setup
Ruby 2.4

# Description

The application is a simulation of a toy robot moving on a square tabletop.
You can set the size of the table when you create a new robot.
There are no other obstructions on the table surface.
The robot must be prevented from falling to destruction.
However further valid movement commands must still be allowed.

Commands to move a robot
* place(x,y,f) -- will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.
* move -- will move the toy robot one unit forward in the direction it is currently facing.
* left / right -- will rotate the robot 90 degrees in the specified direction without changing the position of the robot.
* report -- will announce the X, Y and F of the robot.

Any move that would cause the robot to fall must be ignored.

# Running the test
run 'rspec'
