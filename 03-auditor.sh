#!/bin/bash
# Author: Arjun Tiwari  (24BAI10141)

dirs=(/etc /var/log /usr/bin /usr/local/bin /home)
dirs+=(/usr/share/git /var/lib/git)

echo "================================================================================"
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    echo "$dir exists"
    echo "Size: $(du -sh $dir | awk '{print $1}')"
    echo "Permissions: $(stat -c %a $dir)"
    echo "Owner: $(stat -c %U $dir)"
    echo "--------------------------------------------------------------------------------"
  else
    echo "$dir does not exist"
  fi
done
echo "================================================================================"