#!/bin/bash
# Author: Arjun Tiwari  (24BAI10141)

if [ -f "/etc/debian_version" ]; then
  PACKAGE_MANAGER="apt"
  PACKAGE_NAME="git"
else
  PACKAGE_MANAGER="yum"
  PACKAGE_NAME="git"
fi

if $PACKAGE_MANAGER list --installed | grep -q $PACKAGE_NAME; then
  echo "================================================================================"
  echo "                   Git AUDIT - PACKAGE INSPECTOR                "
  echo "================================================================================"
  echo "Status: $PACKAGE_NAME is INSTALLED on this $(lsb_release -ds) system."
  echo "Version: $(git --version | awk '{print $3}')"
  echo "--------------------------------------------------------------------------------"
  echo "FOSS Philosophy Notes:"
  echo " - Git: Git is a free and open source distributed version control system."
  echo " - Linux: Linux is a free and open-source operating system."
  echo " - Vim: Vim is a free and open-source text editor."
  echo " - GCC: GCC is a free and open-source compiler."
  echo "================================================================================"
else
  echo "$PACKAGE_NAME is NOT installed on this system."
fi