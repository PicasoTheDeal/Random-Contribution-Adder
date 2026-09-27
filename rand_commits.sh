#!/bin/bash

COUNT=$((200 + RANDOM % 601))
echo "Generating $COUNT commits for today..."
for ((i=1; i<=COUNT; i++)); do
  echo "Contribution #\(i on\)(date)" >> contributions.log  
  git add contributions.log
  git commit -m "Automated contribution #$i"
done
