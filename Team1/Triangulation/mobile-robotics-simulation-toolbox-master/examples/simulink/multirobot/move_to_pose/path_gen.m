function xy = path_gen(pose)
    disp(pose);
    global server_queue;
    global map;
    global goal;
    start = [pose(1) pose(2)];
    server_queue.Depth
    if server_queue.Depth == 0
        goal = start;
    end

    % Initiate the planner
    planner = mobileRobotPRM(map);

    % Find the best path from the planner set
    goal = get_goal();
    xy = findpath(planner,start,goal);
    show(planner)

    % Log the activity
    if goal == start 
        disp("The server_queue is empty.");
    else
        disp("Start to end path planned successfully.");
    end
end

function goal = get_goal()
global server_queue;
    %server_queue = get_server_queue();
    global goal;
    goal = server_queue.dequeue;
end