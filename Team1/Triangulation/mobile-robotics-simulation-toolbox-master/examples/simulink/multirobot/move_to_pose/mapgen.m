start = [5,17.5];
rows = 35;
columns = 70;
vertical_wall = 10;
map;
map = zeros(rows,columns);

% First and last rows are made boundaries
for i=1:columns
    map(1,i) = 1;
    map(rows,i) = 1;
end

% First and last columns are made boundaries
for i=1:rows
    map(i,1) = 1;
    map(i,columns) = 1;
end

% Spawn area generation for bots
for i=2:vertical_wall
    map(15,i) = 1;
    map(20,i) = 1;
end
for i=1:rows
    map(i,vertical_wall) = 1;
end
for i=16:19
    map(i,vertical_wall) = 0;
end

map = occupancyMap(map);
disp("Map Generated Successfully.");