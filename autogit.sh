#!/bin/bash

git add .

read -p "Any comments ?" COMMENT

if [ -z $COMMENT ]
then
    echo "No comments"
    COMMENT="Adding existing files"
fi

git commit -m "${COMMENT}"
git push 
printf "y\ege\n"
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