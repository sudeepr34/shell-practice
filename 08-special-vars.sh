#!/bin/bash

echo "All variables passed to the script: $@"
echo "All variables passed to the script: $*"
echo "Script name: $0"
echo "Current Directory: $PWD"
echo "Home directory of the user: $HOME"
echo "who is running this: $USER"
echo "PID of the script: $$"

sleep 50 &
echo "PID of the last command in backgroud is: $!"