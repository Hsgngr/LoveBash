#!/bin/bash

#Udemy Course Section 6: Case Statements and Logic
#Exercise 1:

#Create a startup script for an application called 
#sleep­walking­server, which is provided below.
#The script should be named sleep­walking and 
#accept "start" and "stop" as arguments.
#If anything other than "start" or "stop" is provided 
#as an argument, display a usage statement:
#"Usage sleep­walking start|stop" and
#terminate the script with an exit status of 1.


# This is a startup script for sleep-walking-server
#
# Be sure to copy the sleep-walking-server file into /tmp and
# "chmod 755 /tmpsleep-walking-server"

case "$1" in
  start)
    /tmp/sleep-walking-server &
    ;;
  stop)
    kill $(cat /tmp/sleep-walking-server.pid)
    ;;
  *)
    echo "Usage: $0 start|stop"
    exit 1
esac