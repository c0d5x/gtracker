#!/bin/bash

cd ~/git/gtracker

# DOW=$(date +%u)
DOW=5

# don't work weekends
if [ "$DOW" -gt 5 ]; then
  exit
fi

# thur
if [ "$DOW" == 4 ]; then
  DOW=2
fi

# fri
if [ "$DOW" == 5 ]; then
  DOW=1
fi

for commit in $(seq $DOW); do
  echo $(date) : $RANDOM >> log
  git commit -a -m 'wip'
done

git push
