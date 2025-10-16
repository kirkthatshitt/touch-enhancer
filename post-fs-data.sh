#!/system/bin/sh
# Touch Enhancer v2.0.1
# Early initialization of touch properties


setprop persist.touch.sample_rate 180


if [ -f /sys/module/cpu_boost/parameters/input_boost_enabled ]; then
  echo 1 > /sys/module/cpu_boost/parameters/input_boost_enabled 2>/dev/null
fi

exit 0
