#!/bin/bash
# Author: Arjun Tiwari(24BAI10141)
# -----------------------------------------------------------------------------
# Script: 03-auditor.sh
# Purpose: Audit a set of critical directories (including Git‑specific ones) and
# report their size, permissions, and owner in a clean columnar format.
# -----------------------------------------------------------------------------

# Base directories that are generally important for system audits.
DIRS=(
  "/etc"
  "/var/log"
)

# Dynamically append Git‑specific paths. These may vary by distribution.
DIRS+=("/usr/share/git-core" "/etc/gitconfig")

# Header for the output table.
printf "%-30s %-10s %-10s %-20s\n" "Directory" "Size" "Perms" "Owner"
printf "%s\n" "--------------------------------------------------------------------------------"

# Loop through each directory, verify existence, and extract details.
for DIR in "${DIRS[@]}"; do
  if [[ -d "$DIR" ]]; then
    # Use du to get the total size in a human‑readable format (summarize the dir).
    SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
    # Use stat to fetch permissions (in octal) and owner name.
    PERMS=$(stat -c "%A" "$DIR")
    OWNER=$(stat -c "%U" "$DIR")
    printf "%-30s %-10s %-10s %-20s\n" "$DIR" "$SIZE" "$PERMS" "$OWNER"
  else
    # If the directory does not exist, note it clearly.
    printf "%-30s %-10s %-10s %-20s\n" "$DIR" "N/A" "N/A" "N/A (missing)"
  fi
done
