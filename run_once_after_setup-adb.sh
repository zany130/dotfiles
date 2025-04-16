#!/bin/sh
# Install ADB udev rules
	cd ~/Documents || return
	git clone https://github.com/M0Rf30/android-udev-rules.git                                                             ─╯
    cd android-udev-rules || return
    sudo cp -v 51-android.rules /etc/udev/rules.d/51-android.rules
    sudo chmod a+r /etc/udev/rules.d/51-android.rules
    sudo groupadd adbusers
    sudo usermod -a -G adbusers "$(whoami)"
    sudo systemctl restart systemd-udevd.service
    adb kill-server
