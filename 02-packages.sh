#!/bin/bash
# Author: Arjun Tiwari (24BAI10141)
# -----------------------------------------------------------------------------
# Script: 02-packages.sh
# Purpose: Detect the package manager, verify Git installation, report its version,
# and display philosophy notes for four popular FOSS tools.
# -----------------------------------------------------------------------------

# Detect the package manager and set a variable accordingly.
detect_pkg_manager() {
  if command -v apt-get >/dev/null 2>&1; then
    echo "apt"
  elif command -v dnf >/dev/null 2>&1; then
    echo "dnf"
  elif command -v yum >/dev/null 2>&1; then
    echo "yum"
  elif command -v pacman >/dev/null 2>&1; then
    echo "pacman"
  else
    echo "unknown"
  fi
}

PKG_MANAGER=$(detect_pkg_manager)
PACKAGE_NAME="git"

# Function to check installation status and retrieve version.
check_git() {
  case "$PKG_MANAGER" in
    apt)
      if dpkg -s "$PACKAGE_NAME" >/dev/null 2>&1; then
        INSTALLED="YES"
        VERSION=$(dpkg -s "$PACKAGE_NAME" | awk -F ': ' '/^Version/ {print $2}')
      else
        INSTALLED="NO"
      fi
      ;;
    dnf|yum)
      if rpm -q "$PACKAGE_NAME" >/dev/null 2>&1; then
        INSTALLED="YES"
        VERSION=$(rpm -q --queryformat "%{VERSION}-%{RELEASE}\n" "$PACKAGE_NAME")
      else
        INSTALLED="NO"
      fi
      ;;
    pacman)
      if pacman -Qi "$PACKAGE_NAME" >/dev/null 2>&1; then
        INSTALLED="YES"
        VERSION=$(pacman -Qi "$PACKAGE_NAME" | awk -F ': ' '/^Version/ {print $2}')
      else
        INSTALLED="NO"
      fi
      ;;
    *)
      INSTALLED="UNKNOWN"
      ;;
  esac
}

check_git

# -----------------------------------------------------------------------------
# Output Section
# -----------------------------------------------------------------------------
printf "================================================================================\n"
printf "                   Git AUDIT - PACKAGE INSPECTOR                 \n"
printf "================================================================================\n"
if [[ "$INSTALLED" == "YES" ]]; then
  printf "Status: %s is INSTALLED on this %s system.\n" "$PACKAGE_NAME" "$(awk -F= '/^ID=/{print $2}' /etc/os-release | tr -d '"')"
  printf "Version: %s\n" "$VERSION"
else
  printf "Status: %s is NOT installed on this system.\n" "$PACKAGE_NAME"
fi
printf "--------------------------------------------------------------------------------\n"
printf "FOSS Philosophy Notes:\n"
case "$PACKAGE_NAME" in
  git)
    printf " - Git: A distributed version‑control system that embodies the freedom to collaborate and fork.\n"
    ;;
esac
# Additional notes for three other tools.
printf " - Vim: A powerful, extensible editor that respects the user's control over their editing environment.\n"
printf " - GCC: The GNU Compiler Collection, enabling developers to build free software across architectures.\n"
printf " - Python: An open, community‑driven language that encourages readable and shareable code.\n"
printf "================================================================================\n"
