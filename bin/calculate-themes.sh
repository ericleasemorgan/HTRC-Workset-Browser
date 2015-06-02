# themes.sh - given a set of frequency files and a lexicon; compute the "significance" of the a document

# Eric Lease Morgan <emorgan@nd.edu>
# May 15, 2015 - first cut;
# May 21, 2015 - tweaked for python version of script


# configure
SCRIPT=./bin/calculate-themes.py
NAME=$1
LEXICON=$2

# process each frequency file
for FILE in $NAME/index/*.db
do

	KEY=$( basename $FILE .db )
	printf "$KEY\t"
	$SCRIPT -i $FILE $LEXICON
	
done
