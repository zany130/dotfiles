#!/bin/sh
# Install homebrew and bundle if it's not already installed
if ! command -v brew >/dev/null; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew tap Homebrew/bundle
fi

# Install cargo if it's not already installed
if ! command -v cargo >/dev/null; then
	/bin/bash -c "$(curl https://sh.rustup.rs -sSf)"
fi

# Install AppMan if it's not already installed
if ! command -v appman >/dev/null; then
	/bin/bash -c "$(wget -q https://raw.githubusercontent.com/ivan-hc/AM/main/AM-INSTALLER && chmod a+x ./AM-INSTALLER && ./AM-INSTALLER)"
fi
