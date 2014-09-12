root = "/var/www/wordfocuschapel/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/var/sockets/unicorn.wordfocuschapel.sock"
worker_processes 2
timeout 30


