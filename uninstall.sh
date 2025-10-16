#!/system/bin/sh
#
# Touch Enhancer v2.0.1 Uninstaller
# by kirkthatshit!
#
# Restores input configurations and cleans module files
#

LOG="/dev/null"

# Restore default touch sample rate property
resetprop --delete persist.touch.sample_rate &> $LOG

# Re-disable input boost if enabled by module
if [ -f /sys/module/cpu_boost/parameters/input_boost_enabled ]; then
  echo 0 > /sys/module/cpu_boost/parameters/input_boost_enabled 2>/dev/null
fi

# Disable all previously forced input devices
for input in /sys/class/input/input*; do
  [ -w "$input/enabled" ] && echo 0 > "$input/enabled" 2>/dev/null
done

# Remove all module-related directories
rm -rf /data/adb/modules/touchenhancer
rm -rf /data/adb/modules_update/touchenhancer
rm -rf /data/adb/touchenhancer

exit 0