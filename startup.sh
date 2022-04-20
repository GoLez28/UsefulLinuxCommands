#!/bin/sh
xrandr --output HDMI-1-1 --set "Broadcast RGB" "Full"
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
