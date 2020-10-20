% Simulation parameters
load exampleMap
sampleTime = 0.05;

% Robot parameters
wheelRadius = 0.05;
robotRadius = 0.5;

% Lidar parameters
sensorOffset = [0,0];
scanAngles = linspace(-pi/2,pi/2,9)';
maxRange = 25;

server_gen_temp();
mapgen();
