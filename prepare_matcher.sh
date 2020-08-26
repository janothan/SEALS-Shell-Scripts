
cd $PWD

echo "Cleaning matcher directory."
rm -r $SEALS_MATCHER
mkdir $SEALS_MATCHER

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
