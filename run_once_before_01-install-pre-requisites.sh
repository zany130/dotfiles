#!/bin/sh
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

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
	install -m 755 "$SCRIPT_DIR/vendor/AM-INSTALLER" ./AM-INSTALLER
	/bin/bash ./AM-INSTALLER
	rm -f ./AM-INSTALLER
fi
