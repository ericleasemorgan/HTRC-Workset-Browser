# search.sh - given a one-word query and a "database", do a search and return it in plain text

# Eric Lease Morgan <emorgan@nd.edu>
# May 28, 2015 - first cut; thinking about GMCEC


# get input
QUERY=$1
NAME=$2

# do the work
./bin/search.py $QUERY $NAME | sort -k4 -g -r | ./bin/results2text.py

# done
exit
