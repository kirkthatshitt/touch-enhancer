## Change Log:
- 2.0.1

Removed license system (module now flashable by anyone)
Added Magisk update support (shows “Update available” in Magisk)
Improved compatibility for Magisk v30.4+
Optimized service.sh logic for smoother refresh rate detection
Reduced boot-time execution delay for faster initialization

- 2.0.0

Improved touch sampling adjustment algorithm
Enhanced input boost response time
Reduced redundant system calls to save battery
Improved handling for displays above 90Hz
Code cleanup and structure optimization

- 1.9.5

Added compatibility for Android 14-based ROMs
Improved touch latency under heavy CPU load
Reduced boot lag caused by display service initialization
Improved CPU boost timing logic

- 1.9.0

Rewritten core touch tuning system
Optimized touch polling frequency for low-end devices
Fixed issue with delayed touch response after deep sleep
Added smoother transitions between refresh rate tiers

- 1.8.0

Improved refresh rate detection using dual fallback method
Added safety checks for /sys/class/input/* paths
Improved compatibility for custom kernels
Fixed crash when display info not detected

- 1.7.0

Optimized safe_write() function for stability
Improved Magisk module structure for faster installation
Reduced log spam on boot

- 1.5.0

Added adaptive touch sample rate logic
Improved detection for 60Hz and 90Hz displays
Introduced touch boost for smoother gaming experience

- 1.3.0

Rewrote boot service script to run faster after boot completion
Added fallback defaults for undetected refresh rate

- 1.2.0

Minor bug fixes and improved compatibility with custom ROMs
Optimized script permission handling

- 1.0.0

Initial release
Basic touch responsiveness improvements
Introduced touch sampling rate optimization (default 180Hz for 60Hz display)