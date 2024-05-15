#!/bin/bash

# Define the set of non-letter characters
non_letter_chars="!@#$%^&*()-_=+[{]};:'\",<.>/?\|"

# Define the length of the random string to generate
length=50000

# Function to generate a random non-letter character
generate_random_char() {
    local chars=$1
    echo -n "${chars:$((RANDOM % ${#chars})):1}"
}

# Generate the random string
random_string=""
for (( i=0; i<$length; i++ )); do
    random_string="$random_string$(generate_random_char "$non_letter_chars")"
done

# Picks a random number in the string
random_number=$(($RANDOM % $length))

# Inserts the word "fire" at the random number
random_string="${random_string:0:$random_number}fire${random_string:$random_number}"

echo "$random_string" > soup.txt