#!/bin/bash

# prepare_matcher.sh
# This script copies a given SEALS package (zipped or unzipped) into the $SEALS_MATCHER directory.
# The contents of the directory will be deleted before copying.


# The following variable can also be set in the bash_profile: vim ~/.bash_profile
#SEALS_MATCHER = ""

cd $PWD

# remove matcher directory contents
echo "Cleaning matcher directory."
rm -r $SEALS_MATCHER
mkdir $SEALS_MATCHER

# unzip or copy contents directly into $SEALS_MATCHER directory
if [[ -a $1 ]]; then
        if [[ $1 =~ .*zip ]]; then 
            echo "ZIP file detected. Unzipping to $SEALS_MATCHER";
            unzip $1 $target -d $SEALS_MATCHER
        elif [[ -d $1 ]]; then 
            echo "Copy directory contents."
            cp -r $1/* $SEALS_MATCHER;
        else
            echo "Please specify either a zip file or a directory."
        fi 

else
    echo "File not found: $1";
fi
