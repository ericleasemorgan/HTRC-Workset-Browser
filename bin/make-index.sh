# make-index.sh - create frequency files from the contents of a directory

# Eric Lease Morgan <emorgan@nd.edu>
# May 18, 2015 - first cut; needs error checking


# configure and get input
JSON2FREQUENCY=./bin/make-index.py
NAME=$1

# process each json file in the given directory
for FILE in $NAME/json/*.json
do
    
    # parse out the KEY and echo
    KEY=$( basename $FILE .json )
    printf "\t$KEY\t"
	
	# do the work
	cat $FILE | $JSON2FREQUENCY -d > $NAME/index/$KEY.db
	cat $FILE | $JSON2FREQUENCY -b > $NAME/text/$KEY.txt
	
done
