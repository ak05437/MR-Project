%creating 10x10 empty map
map = binaryOccupancyMap(10,10,10);

%setting occupancy of locations
x = [1.2; 2.3; 3.4; 4.5; 5.6];
y = [5.0; 4.0; 3.0; 2.0; 1.0];

setOccupancy(map, [x y], ones(5,1))
%figure
%show(map)

%Inflate occupied locations by a given radius. 
inflate(map, 0.5)
figure
show(map)

%Get grid locations from world locations.
ij = world2grid(map, [x y]);


%Set grid locations to free locations. 
setOccupancy(map, ij, zeros(5,1), 'grid')
figure
show(map)