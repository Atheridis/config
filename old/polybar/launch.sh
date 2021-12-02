#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

pushd $HOME/.config/polybar/

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch bars 
polybar -q -c config bar1 &
polybar -q -c config bar2 

popd
