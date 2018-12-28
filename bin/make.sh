#!/usr/bin/env bash


# get input
NAME=$1
HOME='/Users/eric/Documents/HTRC-Workset-Browser'

# sanity check
if [ -z $NAME ]; then

    echo "Usage: $0 <name>"
    exit 1
    
fi


# stage #2 - create the index
cd $HOME
./bin/make-index.sh $NAME

# make dictionary
./bin/make-dictionary.py $NAME/index/ > $NAME/dictionary.db

# extract unique words
cat $NAME/dictionary.db | ./bin/list-unique.py  > $NAME/unique.db


# stage #3 - create the catalog
./bin/make-catalog.sh $NAME


# stage #4 - create sorted numeric reports
./bin/calculate-size.sh   $NAME                      | sort -k2 -n -r > $NAME/sizes.db
./bin/calculate-themes.sh $NAME etc/theme-colors.txt | sort -k2 -g -r > $NAME/calculated-colors.db
./bin/calculate-themes.sh $NAME etc/theme-names.txt  | sort -k2 -g -r > $NAME/calculated-names.db
./bin/calculate-themes.sh $NAME etc/theme-ideas.txt  | sort -k2 -g -r > $NAME/calculated-ideas.db

# create reports, sorted by coefficient: colors, names, ideas
./bin/calculate-themes.py -v $NAME/dictionary.db etc/theme-colors.txt > $NAME/dictionary-colors.db
./bin/calculate-themes.py -v $NAME/dictionary.db etc/theme-names.txt  > $NAME/dictionary-names.db
./bin/calculate-themes.py -v $NAME/dictionary.db etc/theme-ideas.txt  > $NAME/dictionary-ideas.db

# create charts; R needs to be installed (oops!); commented out so people don't need R, yet
#./bin/make-graphs.sh $NAME


# state 5 - analyze corpus and create pretty about page
./bin/about.sh $NAME > $NAME/about.db
./bin/about2html.py $NAME > $NAME/about.html


# stage 6 - done
exit 0
