#!/bin/bash
# Author: Arjun Tiwari(24BAI10141)
# -----------------------------------------------------------------------------
# Script: 04-logs.sh
# Purpose: Analyze a given log file for a specific keyword, count occurrences,
# and display the last five matching lines.
# Usage:   ./04-logs.sh /path/to/logfile keyword
# -----------------------------------------------------------------------------

# Ensure a log file path and a keyword are supplied.
if [[ -z "$1" || -z "$2" ]]; then
  echo "Usage: $0 <log_file_path> <keyword>"
  exit 1
fi

LOG_FILE="$1"
KEYWORD="$2"

# Suggest a realistic Git log location for reference (comment only).
# Example Git log file: /var/log/git.log or /var/log/syslog (where Git daemon writes).

# Verify that the log file exists and is readable.
if [[ ! -r "$LOG_FILE" ]]; then
  echo "Error: Cannot read log file '$LOG_FILE'."
  exit 2
fi

# Initialize an array to hold matching lines.
matches=()
count=0

# Read the log file line‑by‑line to avoid loading the entire file into memory.
while IFS= read -r line; do
  if [[ "$line" == *"$KEYWORD"* ]]; then
    ((count++))
    matches+=("$line")
  fi
done < "$LOG_FILE"

# Output the total count of matches.
printf "Keyword '%s' found %d time(s) in %s\n" "$KEYWORD" "$count" "$LOG_FILE"

# If there are matches, display the last five using tail logic.
if (( count > 0 )); then
  printf "--- Last 5 matching entries ---\n"
  # Use printf to join array elements with newlines, then pipe to tail.
  printf "%s\n" "${matches[@]}" | tail -n 5
fi
