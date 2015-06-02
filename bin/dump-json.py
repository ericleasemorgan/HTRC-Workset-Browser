#!/usr/bin/env python2

# dumpjson.py - pretty print a JSON file to STDOUT

# Eric Lease Morgan <emorgan@nd.edu>
# May 18, 2015 - first cut; see https://sharc.hathitrust.org/features


# require
import ujson
import sys
from pprint import pprint

# import from STDIN
pprint( ujson.load( sys.stdin ) )
