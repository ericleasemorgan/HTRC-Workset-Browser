#!/usr/bin/env python2

# size.py - count the number of occurrences in a document

# Eric Lease Morgan <emorgan@nd.edu>
# May 19, 2015; first cut


# require
import sys

# initialize
total = 0

# process each line from standard input
for record in sys.stdin:
	fields = record.rstrip().split( '\t' )
	total += int( fields[ 1 ] )

# output and done
print( total )
quit()

