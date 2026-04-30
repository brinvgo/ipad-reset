#!/bin/bash
# iPad A2316 Reset – openSUSE Package Installation
# Installs libimobiledevice suite and dependencies

set -e

echo "=== iPad A2316 Reset – Linux Setup ==="
echo "Updating package lists..."
sudo zypper refresh

echo "Installing libimobiledevice suite..."
sudo zypper install -y \
  libusbmuxd-dev \
  libplist-dev \
  libplist++-dev \
  libzip-dev \
  libimobiledevice6 \
  libimobiledevice-utils \
  libirecovery6 \
  libirecovery-utils \
  idevicerestore

echo ""
echo "=== Installation Complete ==="
echo "Next steps:"
echo "1. Read GUIDE_LINUX_QUICK.md or GUIDE_COMPLETE.md"
echo "2. Put iPad in recovery mode (button sequence)"
echo "3. Connect iPad to computer"
echo "4. Run: idevice_id -l (verify detection)"
echo "5. Run: sudo idevicerestore -e (main restore)"
echo ""
echo "Optional: Add user to plugdev group (avoid sudo prompts):"
echo "  sudo usermod -a -G plugdev \$USER"
echo "  Then log out and log back in"
