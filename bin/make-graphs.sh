# make-graphs.sh - assuming R (and all of its friends) is installed, create some charts

# Eric Lease Morgan <emorgan@nd.edu>
# May 30, 2015 - first cut; brain dead


# get input
NAME=$1

# do the work
./bin/graph-cluster.R $NAME
./bin/graph-wordcloud.R $NAME

# done
exit 0


