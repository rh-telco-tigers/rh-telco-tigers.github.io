#!/bin/bash

# precommit script to ensure that certain requirements are met

## Validate that every post (located under content/posts) has a header that includes 
## title, author and category
for f in `ls content/posts`
do
  WORKINGSET=`sed -n '/---/,/---/p' content/posts/$f`
  for i in author title categories
  do
    echo $WORKINGSET | grep $i > /dev/null
    retVal=$?
    if [ $retVal -ne 0 ];
    then
        echo "$i not found in content/posts/$f"
        exit 1
    fi
  done
  echo "file content/posts/$f passed header check"
done

## Validate markdown with markdownlint (https://github.com/markdownlint/markdownlint)
markdownlint-cli2  content/
retVal=$?
if [ $retVal -ne 0 ];
then
    echo "one or more files failed markdownlint"
    exit 1
fi
echo "All files passed markdownlint checks"

## Validate that links are valid
for f in `ls content/posts`
do
    markdown-link-check content/posts/$f
    retVal=$?
    if [ $retVal -ne 0 ];
    then
        echo "$f failed link check"
        exit 1
    fi
done
echo "All files passed link check"

## Validate that category only contains one or more of the following
## ["Automation", "Incubation", "Application Onboarding", "Private Cloud", "Public Cloud", "Hybrid Cloud", "AI/ML", "Training/OnBoarding", "Middleware", "Miscellaneous"]


## Check spelling? 