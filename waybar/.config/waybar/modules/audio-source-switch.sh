#!/bin/sh

# CURRENTLY NOT IN USE

# Get current sink
# Headphone sink: alsa_output.pci-0000_09_00.4.analog-stereo
# Speaker sink: alsa_output.pci-0000_09_00.4.iec958-stereo
current_sink=$(pactl get-default-sink)

# Toggle sink
if [ "$current_sink" == "alsa_output.pci-0000_09_00.4.iec958-stereo" ]
then
  pactl set-card-profile 52 "output:analog-stereo"
else
  pactl set-card-profile 52 "output:iec958-stereo"
fi
