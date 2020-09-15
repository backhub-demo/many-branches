#!/bin/bash
for i in {1..4000}
do
  b="b-$i"

  echo "Branch $b" > README.md
  git commit -q -m "Setting branch name $b in README" README.md

  git checkout -q -b $b

  echo $b
done
git push --all origin


