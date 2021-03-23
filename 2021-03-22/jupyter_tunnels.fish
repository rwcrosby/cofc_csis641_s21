#!/usr/bin/env fish

function default_value
    set val $argv[1]
    set -q val; or set val $argv[2]
    echo $val
end

set cmd (default_value $argv[1] "help")
set machine (default_value $argv[2] "acnt1")
set port (default_value $argv[3] "8889")

switch $cmd
    case start
        ssh -fYNT -o ExitOnForwardFailure=yes  -L $port:localhost:8888 $machine
    case stop
        ssh  -O exit $machine
    case check
        ssh  -O check $machine
    case '*'
        echo "Usage start|stop|check machine port"
end
