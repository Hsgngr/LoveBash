#!/bin/bash

git add .

read -p "Any comments ?" COMMENT

if [ -z $COMMENT ]
then
    echo "No comments"
    COMMENT="Adding existing files"
fi

git commit -m "${COMMENT}"
git push https://ege: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@myrepository.biz/file.git --all
