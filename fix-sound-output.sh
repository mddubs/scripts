# https://rastating.github.io/setting-default-audio-device-in-ubuntu-18-04/

# List output devices
# pactl list short sinks

# Try analog stereo
pactl set-default-sink 'alsa_output.pci-0000_00_1b.0.analog-stereo'
# Try 2.1 surround
#pactl set-default-sink 'alsa_output.pci-0000_00_1b.0.analog-surround-21'
