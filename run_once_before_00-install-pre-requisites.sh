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

# Install fisher if it's not already installed
if ! command -v fisher >/dev/null; then
	/bin/fish -c "$(curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish) | source && fisher install jorgebucaran/fisher)"
fi
