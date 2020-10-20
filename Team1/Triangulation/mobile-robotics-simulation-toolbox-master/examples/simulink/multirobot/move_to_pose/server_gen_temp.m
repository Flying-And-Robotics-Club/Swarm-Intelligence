% Create and initialize a queue.
global server_queue;
server_queue = queue(8);
server_queue.enqueue([20 20]);
server_queue.enqueue([30 20]);
server_queue.enqueue([30 15]);
server_queue.enqueue([40 10]);
server_queue.enqueue([60 15]);
server_queue.enqueue([15 20]);
server_queue.enqueue([20 05]);
server_queue.enqueue([50 05]);
% assignin('base', "server_queue", server_queue);

global goal;
goal = server_queue.dequeue;

disp("Server Queue Generated Successfully.");