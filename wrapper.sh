#!/bin/bash

rm -f logs/qemu/current.log

bash find_pty.sh &
PID=$!

bash start_qemu.sh &

tail --pid=$PID -f /dev/null

bash start_linux.sh
