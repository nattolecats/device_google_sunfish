#!/bin/sh

# Get previous command
if ! history | tail -n 1 | grep -q "sunfish"; then return; fi

# Give it officiality
export EVO_BUILD_TYPE=OFFICIAL

# Prebuilt kernel setup
git clone https://android.googlesource.com/device/google/sunfish-kernel device/google/sunfish-kernel --depth 1

return
