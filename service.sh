#!/system/bin/sh

while [ -z "$(getprop sys.boot_completed)" ]; do
  sleep 3
done

safe_write() {
  target="$1"
  value="$2"
  [ -w "$target" ] && echo "$value" > "$target" 2>/dev/null
}

refresh_rate=$(dumpsys display | grep -m1 "Refresh rate" | grep -oE "[0-9]+")
[ -z "$refresh_rate" ] && refresh_rate=60

if [ "$refresh_rate" -le 60 ]; then
  setprop persist.touch.sample_rate 180
elif [ "$refresh_rate" -le 90 ]; then
  setprop persist.touch.sample_rate 240
else
  setprop persist.touch.sample_rate 300
fi

for input in /sys/class/input/input*; do
  safe_write "$input/enabled" 1
done

safe_write /sys/module/cpu_boost/parameters/input_boost_enabled 1
exit 0