#!/bin/bash -l

# Check for commit message structure
word="JIRA-[0-9]+"
isPresent=$(grep -Eoh "$word" $1)

if [[ -z $isPresent ]]
  then echo "Commit message KO, $word is missing"; exit 1;
  else echo "Commit message OK"; exit 0;
fi

# Check for copyright comment in *.py filess
if [[ ! `egrep "^#.*copyright.*$" */*.py` ]]; then
    echo "ERROR: Disallowed development configuration in file: .py"
    exit 1
fi

