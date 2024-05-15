#!/bin/bash

# Define the length of the chain
length=5000

# Generate random non-letter characters
chain=$(cat /dev/urandom | tr -dc '[:punct:]' | fold -w "$length" | head -n 1)

# Chooses a random number in the chain
random=$(($RANDOM % $length))

# Replace the character at the random position with the word "fire"
chain="${chain:0:$random}fire${chain:$random+4}"

# Write the chain to a file
echo "$chain" > soup.txt