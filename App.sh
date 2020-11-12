#!/bin/bash

# A simple shell script to use as a pomodoro app.
# The first argument is the focus time length.
# The second argument is the break length.
# Made by Kiailandi (https://github.com/kiailandi)

wseconds=${1:-25}*60;
pseconds=${2:-wseconds/300}*60;

# Check os and behave accordingly
if [ "$(uname)" == "Darwin" ]; then
    while true; do
        date1=$((`date +%s` + $wseconds));
        while [ "$date1" -ge `date +%s` ]; do
            echo -ne "$(date -u -j -f %s $(($date1 - `dat>
        done
        osascript -e 'display notification "Time to walk >
        read -n1 -rsp $'Press any key to continue or Ctrl>
        date2=$((`date +%s` + $pseconds));
        while [ "$date2" -gt `date +%s` ]; do
            echo -ne "$(date -u -j -f %s $(($date2 - `dat>
        done
        osascript -e 'display notification "Time to get b>
        read -n1 -rsp $'Press any key to continue or Ctrl>
    done
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    while true; do
        date1=$((`date +%s` + $wseconds));
        while [ "$date1" -ge `date +%s` ]; do
            echo -ne "$(date -u --date @$(($date1 - `date>
        done
        notify-send "Break" "Time to walk and rest";
        read -n1 -rsp $'Press any key to continue or Ctrl>
        date2=$((`date +%s` + $pseconds));
        while [ "$date2" -ge `date +%s` ]; do
            echo -ne "$(date -u --date @$(($date2 - `date>
        done
        notify-send "Work" "Time to get back to work";
        read -n1 -rsp $'Press any key to continue or Ctrl>
    done
else
    echo -ne "Your OS is currently not supported\n";
fi
