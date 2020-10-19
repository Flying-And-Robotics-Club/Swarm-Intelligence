function goal = get_goal()
global server_queue;
    %server_queue = get_server_queue();
    goal = server_queue.dequeue;
end