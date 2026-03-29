#!/bin/bash
# Author: Arjun Tiwari  (24BAI10141)

# Suggest a realistic log path for Git: /var/log/git.log
LOG_FILE=$1
KEYWORD=$2
echo "================================================================================"
echo "                   Git AUDIT - LOG FILE ANALYZER               "
echo "================================================================================"
COUNT=0
while read -r line; do
  if [[ $line == *$KEYWORD* ]]; then
    ((COUNT++))
  fi
done < $LOG_FILE
echo "Keyword '$KEYWORD' found $COUNT times in $LOG_FILE"

tail -n 5 $LOG_FILE | grep $KEYWORD
echo "================================================================================"