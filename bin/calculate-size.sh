# size.sh - compute the size of all the .db files in a given directory

# Eric Lease Morgan <emorgan@nd.edu>
# May 18, 2015 - first cut;


# configure
SCRIPT=./bin/calculate-size.py
NAME=$1

# process each .db file in the given directory
for FILE in $NAME/index/*.db
do

    # parse out the KEY and echo
    KEY=$( basename $FILE .db )
    printf "$KEY\t"

	# do the work
	cat $FILE | $SCRIPT
	
done
