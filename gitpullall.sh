#!/bin/bash

repoDirs=`find ./* -maxdepth 0 -type d -print |cut -c 3-`

for i in $repoDirs; do
  if [ -d "$i/.git" ]; then
    cd $i
    echo "Pulling `pwd`"
    git pull
    cd ..;
  else
    echo `pwd`/$i IS NOT A GIT REPO!
  fi
done

