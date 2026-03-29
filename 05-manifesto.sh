#!/bin/bash
# Author: Arjun Tiwari  (24BAI10141)

echo "================================================================================"
read -p "What is your name? " NAME
read -p "What is your favorite open-source project? " PROJECT
read -p "What do you think is the most important aspect of open-source software? " ASPECT
echo "================================================================================"

echo "My name is $NAME, and I believe in the power of open-source software. My favorite project is $PROJECT, and I think the most important aspect of open-source is $ASPECT. I will always support and contribute to the open-source community."

echo "================================================================================"

echo "My Open Source Manifesto" > $NAME.txt
echo "My name is $NAME, and I believe in the power of open-source software. My favorite project is $PROJECT, and I think the most important aspect of open-source is $ASPECT. I will always support and contribute to the open-source community." >> $NAME.txt