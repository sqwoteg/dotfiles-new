#!/bin/bash

# echo $1
new=$(</sys/class/backlight/amdgpu_bl0/brightness)
# echo $new
new=$(($new + $1))
# echo $new
max=$(</sys/class/backlight/amdgpu_bl0/max_brightness)
# echo $max

if [[ $new -gt $max ]]
then
	new=$max
elif [[ 0 -gt $new ]]
then
	new=0
fi

echo $new > /sys/class/backlight/amdgpu_bl0/brightness

