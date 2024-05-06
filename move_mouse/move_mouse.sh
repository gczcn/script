#!/usr/bin/env bash
eval $(xdotool getmouselocation --shell) && xdotool mousemove `expr $X $1 $2` `expr $Y $3 $4`
