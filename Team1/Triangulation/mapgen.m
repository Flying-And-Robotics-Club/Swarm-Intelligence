rows = 35;
columns = 70;
vertical_wall = 10;
map = zeros(rows,columns)

for i=1:columns
    map(1,i) = 1;
    map(rows,i) = 1;
end

for i=1:rows
    map(i,1) = 1;
    map(i,columns) = 1;
end

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

show(map)