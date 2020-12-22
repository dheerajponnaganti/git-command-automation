#!/bin/sh
commitMessage=$cm
currentBranch=$(git symbolic-ref --short -q HEAD)

if[! -z "$cm"]
then
  git add .
  git commit -m '$commitMessage'
  git push origin $currentBranch
else
  echo "Commit message not provided"
fi
