function server_queue = get_server_queue()
    server_queue = evalin('base', 'server_queue');
end