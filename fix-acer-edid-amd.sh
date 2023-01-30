# Ubuntu Xorg
#xrandr --addmode DisplayPort-2 1920x1080
#xrandr --output DisplayPort-0 --primary --mode 2560x1600 --pos 1080x117 --rotate normal --output DisplayPort-1 --mode 1920x1080 --pos 3640x0 --rotate left --output DisplayPort-2 --mode 1920x1080 --pos 0x0 --rotate right --output HDMI-A-0 --off

# Ubuntu 22.04 Wayland
# Get Display names
for p in /sys/class/drm/*/status; do con=${p%/status}; echo -n "${con#*/card?-}: "; cat $p; done

# Set edid_override
sudo cat /home/matt/Source/scripts/acer-v226hql-edid.bin > /sys/kernel/debug/dri/0/DP-3/edid_override
# Replug monitor and it works!  will it persist after boot? NOPE!

# So...
# sudo mkdir /usr/lib/firmware/edid
# sudo cp /home/matt/Source/scripts/acer-v226hql-edid.bin /usr/lib/firmware/edid/
# Set the following line in /etc/default/grub...
# GRUB_CMDLINE_LINUX_DEFAULT="drm.edid_firmware=DP-3:edid/acer-v226hql-edid.bin"
# Run 'sudo update-grub' and reboot.
# IT WORKS!!!
