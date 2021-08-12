#!/bin/bash

git add .

read -p "Any comments ?" COMMENT

if [ -z $COMMENT ]
then
    echo "hey"
    COMMENT="Adding existing files"
fi

git commit -m "${COMMENT}"
git push
ege
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