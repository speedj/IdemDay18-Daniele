#!/bin/sh 
python -m SimpleHTTPServer & 
firefox  http://localhost:8000/ &
#sleep 2
#xdotool search --sync --onlyvisible --class "Firefox" windowactivate key F11
