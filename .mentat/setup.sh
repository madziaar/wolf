#!/bin/bash

# Install system dependencies needed for Wolf
apt-get update -y
apt-get install -y \
    libunwind-dev \
    ninja-build \
    libboost-locale-dev libboost-thread-dev libboost-filesystem-dev libboost-log-dev libboost-stacktrace-dev libboost-container-dev \
    libssl-dev \
    libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev \
    libwayland-dev libwayland-server0 wayland-protocols libinput-dev libxkbcommon-dev libgbm-dev \
    libcurl4-openssl-dev \
    libpulse-dev \
    libevdev-dev \
    libudev-dev \
    libdrm-dev \
    libpci-dev \
    clang-format-18 clang-tidy-18

# Install cargo-c for building Rust C bindings
cargo install cargo-c

# Setup and build gst-wayland-display
cd /tmp
git clone https://github.com/games-on-whales/gst-wayland-display
cd gst-wayland-display
git checkout a31f5a0
cargo cinstall -p c-bindings --prefix=/usr/local

# Return to workspace
cd /workspace/madziaar_wolf

echo "Setup complete! All dependencies have been installed."
