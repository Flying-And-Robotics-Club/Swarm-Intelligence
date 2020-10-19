function xy = path_gen(pose)
    disp(pose);
    start = [pose(1) pose(2)];
    if server_queue.depth == 0
        goal = start;
    end

    % Initiate the planner
    planner = mobileRobotPRM(map);

    % Find the best path from the planner set
    xy = findpath(planner,start,goal);

    % Log the activity
    if goal == start 
        disp("The server_queue is empty.");
    else
        disp("Start to end path planned successfully.");
    end
end