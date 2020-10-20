% >>Struct a
%     --->start (1,2)
%     --->goal  (1,2)
%     --->waypoints

planner = mobileRobotPRM(map);

for i = 1:8
    data_array(i).start = [rand(1,1)*8+1 rand(1,1)*3+16];
    data_array(i).goal = [rand(1,1)*58+11 rand(1,1)*33+1];
    data_array(i).waypoints = findpath(planner,data_array(i).start,data_array(i).goal);
end 
    