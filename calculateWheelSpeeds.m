function [ LeftWheelVelocity, RightWheelVelocity ] = calculateWheelSpeeds( v, omega, parameters )
% This function computes the motor velocities for a differential drive
% robot. The arguments are:
% v: Linear velocity of the robot
% omega: Angular velocity of the robot
% parameters: Structure containing the wheel radius and interwheel
% distance. 


%% Extract parameter values
r = parameters.wheelRadius;
L = parameters.interWheelDistance;

%% Compute Wheel Velocities
% Your code goes here 

j = [r/2 r/2; 0 0 ; -r/L r/L];
v1 = [v; 0; omega];
I = inv(j'*j)*j'*v1;
LeftWheelVelocity = I(1);
RightWheelVelocity = I(2);

end
