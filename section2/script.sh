#!/bin/bash

#Exercise 1&2
TEXT="Scripting is fun!"
echo $TEXT

#Exercise 3

HOST_NAME=$(hostname)
echo "This script is running on ${HOST_NAME}."

#Exercise 4

FILE="/etc/shadow"

if [ -e "$FILE" ]
then
    echo "Shadow passwords are enabled."
fi

if [ -w "$FILE" ]
then
    echo "You have permissions to edit "$FILE" "
else
    echo "You do NOT have permissions to edit "$FILE" "
fi

#Exercise 5
# Write a shell script that displays "man", "bear", "pig", "dog", "cat", and "sheep"
# to the screen with each appearing on a separate line. Try to do this in as few lines as possible.

ANIMALS="man bear pig dog cat sheep"

for ANIMAL in $ANIMALS
do
    echo "Animal : $ANIMAL"
done

#Exercise 6
# Write a shell script that prompts the user for a name of a file or directory
# and reports if it is a regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.

echo "WHAT DO YOU WANT TO SEARCH ? "; read NAME

if [ -d "$NAME" ]
then
    echo "${NAME} is a directory."
elif [ -f "$NAME" ]
then
    echo "${NAME} is a regular file."
elif [ -e "$NAME" ]
then
    echo "${NAME} is a file any other type than regular."
else
    echo "${NAME} does not exist."
fi

#Exercise 7:

#Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.
POSITIONAL_ARG=$1


if [ -d "$POSITONAL_ARG" ]
then
    echo " ${POSITIONAL_ARG} is a directory."
elif [ -f "$POSITIONAL_ARG" ]
then
    echo " ${POSITIONAL_ARG} is a regular file."
elif [ -e "$POSITONAL_ARG" ]
then
    echo " ${POSITIONAL_ARG} is a file any other type than regular."
else
    echo " ${POSITIONAL_ARG} does not exist."
fi

#Exercise 8:
#Modify the previous script to accept an unlimited number of files and directories as arguments. Hint: You'll want to use a special variable.

echo "==================="
for FILE in $@
do
    if [ -d "$FILE" ]
    then
        echo " ${FILE} is a directory."
    elif [ -f "$FILE" ]
    then
        echo " ${FILE} is a regular file."
    elif [ -e "$FILE" ]
    then
        echo " ${FILE} is a file any other type than regular."
    else
        echo " ${FILE} does not exist."
    fi
done

