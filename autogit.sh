#!/bin/bash

git add .

read -p "Any comments ?" COMMENT

if [ -z $COMMENT ]
then
    echo "No comments"
    COMMENT="Adding existing files"
fi

git commit -m "${COMMENT}"
git push &
process_id=$!
echo "PID: $process_id"
wait $process_id
echo ege
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