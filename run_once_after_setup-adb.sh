#!/bin/sh
# Install ADB if it's not already installed
if ! command -v adb >/dev/null; then
	cd ~/Documents || return
	wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip 
	unzip -d ~/.local/bin platform-tools-latest-linux.zip 
	git clone https://github.com/M0Rf30/android-udev-rules.git                                                             ─╯
    cd android-udev-rules || return
    sudo cp -v 51-android.rules /etc/udev/rules.d/51-android.rules
    sudo chmod a+r /etc/udev/rules.d/51-android.rules
    sudo groupadd adbusers
    sudo usermod -a -G adbusers "$(whoami)"
    sudo systemctl restart systemd-udevd.service
    adb kill-server
fi
