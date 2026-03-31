#!/bin/bash
# Author: Arjun Tiwari(24BAI10141)
# -----------------------------------------------------------------------------
# Script: 01-identify.sh
# Purpose: Gather basic system information for the Git audit.
# It extracts the Linux distribution, kernel version, current user, home directory,
# system uptime, and the current date/time. Finally, it prints a hard‑coded
# Open Source freedom message.
# -----------------------------------------------------------------------------

# Function to safely retrieve the Linux distribution name and version.
get_distro() {
  if [[ -f /etc/os-release ]]; then
    # Source the file to get PRETTY_NAME variable.
    . /etc/os-release
    echo "$PRETTY_NAME"
  elif command -v lsb_release >/dev/null 2>&1; then
    lsb_release -ds
  else
    echo "Unknown Distribution"
  fi
}

# Retrieve information using standard commands.
DISTRO=$(get_distro)                           # e.g., Ubuntu 22.04.3 LTS
KERNEL=$(uname -r)                             # Kernel version
CURRENT_USER=$(whoami)                         # Current logged‑in user
HOME_DIR=$HOME                                 # Home directory path
UPTIME=$(uptime -p)                            # Human readable uptime (e.g., up 2 hours, 5 minutes)
CURRENT_DATE=$(date "%a %b %d %Y %H:%M:%S %Z%z (%Z)")

# Print a nicely formatted report.
printf "================================================================================\n"
printf "                   Git AUDIT - SYSTEM IDENTITY                    \n"
printf "================================================================================\n"
printf "Linux Distribution: %s\n" "$DISTRO"
printf "Kernel Version:     %s\n" "$KERNEL"
printf "Current User:       %s\n" "$CURRENT_USER"
printf "Home Directory:     %s\n" "$HOME_DIR"
printf "System Uptime:      %s\n" "$UPTIME"
printf "Current Date/Time:  %s\n" "$CURRENT_DATE"
printf "--------------------------------------------------------------------------------\n"
printf "Message: This system runs on Open Source software, providing freedom to study, change, and distribute.\n"
printf "================================================================================\n"
