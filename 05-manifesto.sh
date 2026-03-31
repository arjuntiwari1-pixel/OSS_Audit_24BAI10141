#!/bin/bash
# Author: Arjun (24BAI10141)
# -----------------------------------------------------------------------------
# Script: 05-manifesto.sh
# Purpose: Interactively collect user input and generate a personalized Open
# Source manifesto, appending it to a text file named after the current user.
# -----------------------------------------------------------------------------

# Prompt the user for three pieces of information.
read -p "Enter your favorite FOSS project: " fav_project
read -p "Why do you contribute to open source? " contribution_reason
read -p "What is your vision for the future of open source? " vision

# Construct a paragraph using the collected answers.
MANIFESTO="As a passionate advocate of $fav_project, I believe that $contribution_reason. My vision for the future of open source is $vision."

# Define the output file name based on the current user.
OUTPUT_FILE="${USER}.txt"

# Append the manifesto to the file, creating it if it does not exist.
printf "%s\n\n" "$MANIFESTO" >> "$OUTPUT_FILE"

# Inform the user of the successful operation.
printf "Your manifesto has been saved to %s\n" "$OUTPUT_FILE"
