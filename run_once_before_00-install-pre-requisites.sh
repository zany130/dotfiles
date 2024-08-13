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
