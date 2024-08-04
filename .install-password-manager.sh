#!/bin/bash

# exit immediately if password-manager-binary is already in $PATH
bw >/dev/null 2>&1 && exit

brew install bitwarden-cli
esac
