start = [5,17.5];
goal = [65,30];
planner = mobileRobotPRM(map);
xy = findpath(planner,start,goal);