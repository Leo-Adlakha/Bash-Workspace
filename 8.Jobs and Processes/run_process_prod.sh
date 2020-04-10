#!/bin/bash

if [[ ! -e /tmp/test.py.pid ]]; then
    # Check if the file already exists
    python test.py &
    # and if so do not run another process.
    echo $! > /tmp/test.py.pid
else
    echo -n "ERROR: The process is already running with pid "
    cat /tmp/test.py.pid
    echo
fi
