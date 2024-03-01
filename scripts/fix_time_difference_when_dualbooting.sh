#!/bin/bash

echo "Fix Windows-Ubuntu time difference when dual-booting"

echo ""

echo "Setting Ubuntu to use local time"
timedatectl set-local-rtc 1 --adjust-system-clock

echo "Change made..."
echo "Check that 'RTC in local TZ' is flagged as 'yes'. If so, reboot your system to Windows. When Windows is on, reboot it again to Windows to make new changes applied."

timedatectl

# To undo the above change, launch the following command:
# timedatectl set-local-rtc 0 --adjust-system-clock