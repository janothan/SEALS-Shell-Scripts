#!/bin/bash

# The following 3 variables can also be set in the bash_profile: vim ~/.bash_profile
#SEALS_HOME = "" 
#SEALS_MATCHER = ""
#SEALS_CLIENT = ""
#SEALS_RESULTS = ""
#JAVA_8 = ""

BEGIN="$JAVA_8 -Xmx8g -jar $SEALS_CLIENT $SEALS_MATCHER -x"


echo 1. Track bib - benchmark 
echo 2. Track anatomy
echo 3. Track conference
echo 4. Track multifarm de - en
echo 5. Track interactive - conference
echo 6. Track small fma - nci
echo 7. Track knowledge graph
echo 'e  exit'

printf "\nType in the number to execute track: "
read number

case $number in
1)
echo "Selected Track: bib - benchmark"
cd $SEALS_HOME
command="$BEGIN http://oaei.webdatacommons.org/tdrs/ 2015benchmarks-biblio 2015benchmarks-biblio-r1 $SEALS_RESULTS"
eval $command
;;
2)
echo "Selected Track: Anatomy"
command="$BEGIN http://oaei.webdatacommons.org/tdrs/ anatomy_track anatomy_track-default $SEALS_RESULTS"
cd $SEALS_HOME
echo $command
eval "$command";
;;
3)
echo "Selected Track: Conference"
command="$BEGIN http://oaei.webdatacommons.org/tdrs/ conference conference-v1 $SEALS_RESULTS"
cd $SEALS_HOME
echo $command
eval "$command";
4) 
echo "Selected Track: multifarm de - en"
command="$BEGIN http://oaei.webdatacommons.org/tdrs/ de-en de-en-v2 $SEALS_RESULTS"
cd $SEALS_HOME
echo $command
eval "$command";
5)
echo "Selected Track: Interactive Conference"
command="$BEGIN http://oaei.webdatacommons.org/tdrs/ interactive interactive-conference_2015 $SEALS_RESULTS"
cd $SEALS_HOME
echo $command
eval "$command";
6)
echo "Selected Track: LargeBio Small 2016"
command="$BEGIN http://oaei.webdatacommons.org/tdrs/ largebio largebio-fma_nci_small_2016 $SEALS_RESULTS"
cd $SEALS_HOME
echo $command
eval "$command";
7)
echo "Selected Track: LargeBio Small 2016"
command="$BEGIN http://oaei.webdatacommons.org/tdrs/ knowledgegraph v3 $SEALS_RESULTS"
cd $SEALS_HOME
echo $command
eval "$command";
*)
echo "Invalid Option";;

esac