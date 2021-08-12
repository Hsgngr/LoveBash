#!/bin/bash

#Udemy Course Section 5: WildCards

#Exercise 1:

#Write a shell script that renames all files in the current directory
#that end in ".jpg" to begin with today's date in the following format: YYYY­MM­DD.
#For example, if a picture of my cat was in the current directory and
#today was October 31, 2016 it would change name from "mycat.jpg" to "2016­10­31­mycat.jpg".

#Hint: Look at the format options to the date command.
#For "extra credit" make sure to gracefully handle instances where there are no ".jpg" files in the current directory. 
#(Hint: Man bash and read the section on the nullglob option.)

# First Lets remove all jpg files
rm *jpg

#Then lets add these default files
touch cat.jpg
touch dog.jpg
touch cow.jpg

TODAY=$(date +%F)
for FILE in *.jpg
do
    echo "COPYING  $FILE"
    NEW_NAME=$TODAY$FILE
    mv $FILE $NEW_NAME
done

#Exercise 2:

#Preparation for the Question
rm *jpg
touch cat.jpg
touch dog.jpg
touch cow.jpg

#Write a script that renames files based on the file extension. 
#The script should prompt the user for a file extension.
#Next, it should ask the user what prefix to prepend to the file name(s).
#By default the prefix should be the current date in YYYY­MM­DD format.
#So, if the user simply presses enter the date will be used. 
#Otherwise, whatever the user entered will be used as the prefix. 
#Next, it should display the original file name and the new name of the file.
#Finally, it should rename the file.

echo "Extension type ? "
read EXT
echo "what prefix to prepend to the file name ? "
read PREF

if [-z PREF ]
then
    PREF=$(date +%F)
fi

for FILE in *.$EXT
do
    NEW_NAME=$PREF$FILE
    echo "ORIGINAL $FILE >>> CHANGED TO $NEW_NAME "
    mv $FILE $NEW_NAME
done