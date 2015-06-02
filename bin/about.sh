# about.sh - create a set of name/value pairs describing a corpus

# Eric Lease Morgan <emorgan@nd.edu>
# May 31, 2015 - first investigations; based on previous work


# configure
CORPUSNAME=$1

# size of corpus
CORPUSSIZE=$( ls -1 $CORPUSNAME/json/*.json | wc -l )

# slurp up the catalog and remove its header
CATALOG=$( sed '1d' $CORPUSNAME/catalog.db )

# remember, the fields in the (default) catalog
#   1 - id
#   2 - title
#   3 - publication date
#   4 - size in pages
#   5 - HathiTrust URL
#   6 - language
#   7 - MARC URL
#   8 - WorldCat URL
#   9 - size in words
#  10 - colors coefficient
#  11 - names coefficient
#  12 - ideas coefficient

# date range
DATEEARLIEST=$( echo "$CATALOG" | sort -t $'\t' -k3 -g    | cut -f3 | head -1 )
DATELATEST=$(   echo "$CATALOG" | sort -t $'\t' -k3 -g -r | cut -f3 | head -1 )

# size in page
PAGESSHORTEST=$(echo "$CATALOG" | sort -t $'\t' -k4 -g    | cut -f4 | head -1 )
PAGESLONGEST=$( echo "$CATALOG" | sort -t $'\t' -k4 -g -r | cut -f4 | head -1 )
PAGESTOTAL=$(   echo "$CATALOG" | cut -f4 | paste -sd+ -  | bc )

# size in words
WORDSSHORTEST=$(echo "$CATALOG" | sort -t $'\t' -k9 -n    | cut -f9 | head -1 )
WORDSLONGEST=$( echo "$CATALOG" | sort -t $'\t' -k9 -n -r | cut -f9 | head -1 )
WORDSTOTAL=$(   echo "$CATALOG" | cut -f9 | paste -sd+ - | bc )
WORDSUNIQUE=$(    wc -l $CORPUSNAME/unique.db | cut -f1 -d' ')

# most frequent words
FREQUENTWORDS=$( cat $CORPUSNAME/dictionary.db        | head -25 | awk '{print $1" "$2}' | tr '\n' '|' )
FREQUENTIDEAS=$( cat $CORPUSNAME/dictionary-ideas.db  | head -25 | awk '{print $1" "$2}' | tr '\n' '|' )
FREQUENTNAMES=$( cat $CORPUSNAME/dictionary-names.db  | head -25 | awk '{print $1" "$2}' | tr '\n' '|' )
FREQUENTCOLORS=$(cat $CORPUSNAME/dictionary-colors.db | head -10 | awk '{print $1" "$2}' | tr '\n' '|' )

# items of interest
WORKSHORTEST=$( echo "$CATALOG" | sort -t $'\t' -k4  -g    | head -1 | cut -f1 )
WORKLONGEST=$(  echo "$CATALOG" | sort -t $'\t' -k4  -g -r | head -1 | cut -f1 )
WORKOLDEST=$(   echo "$CATALOG" | sort -t $'\t' -k3  -g    | head -1 | cut -f1 )
WORKNEWEST=$(   echo "$CATALOG" | sort -t $'\t' -k3  -g -r | head -1 | cut -f1 )
IDEASMOST=$(    echo "$CATALOG" | sort -t $'\t' -k12 -g -r | head -1 | cut -f1 )
IDEASLEAST=$(   echo "$CATALOG" | sort -t $'\t' -k12 -g    | head -1 | cut -f1 )
NAMESMOST=$(    echo "$CATALOG" | sort -t $'\t' -k11 -g -r | head -1 | cut -f1 )
NAMESLEAST=$(   echo "$CATALOG" | sort -t $'\t' -k11 -g    | head -1 | cut -f1 )
COLORSMOST=$(   echo "$CATALOG" | sort -t $'\t' -k10 -g -r | head -1 | cut -f1 )
COLORSLEAST=$(  echo "$CATALOG" | sort -t $'\t' -k10 -g    | head -1 | cut -f1 )

# output
echo -e "CORPUSNAME\t$CORPUSNAME"
echo -e "CORPUSSIZE\t$CORPUSSIZE"
echo -e "DATEEARLIEST\t$DATEEARLIEST"
echo -e "DATELATEST\t$DATELATEST"
echo -e "PAGESSHORTEST\t$PAGESSHORTEST"
echo -e "PAGESLONGEST\t$PAGESLONGEST"
echo -e "PAGESTOTAL\t$PAGESTOTAL"
echo -e "WORDSSHORTEST\t$WORDSSHORTEST"
echo -e "WORDSLONGEST\t$WORDSLONGEST"
echo -e "WORDSTOTAL\t$WORDSTOTAL"
echo -e "WORDSUNIQUE\t$WORDSUNIQUE"
echo -e "FREQUENTWORDS\t$FREQUENTWORDS"
echo -e "FREQUENTIDEAS\t$FREQUENTIDEAS"
echo -e "FREQUENTNAMES\t$FREQUENTNAMES"
echo -e "FREQUENTCOLORS\t$FREQUENTCOLORS"
echo -e "WORKSHORTEST\t$WORKSHORTEST"
echo -e "WORKLONGEST\t$WORKLONGEST"
echo -e "WORKOLDEST\t$WORKOLDEST"
echo -e "WORKNEWEST\t$WORKNEWEST"
echo -e "IDEASMOST\t$IDEASMOST"
echo -e "IDEASLEAST\t$IDEASLEAST"
echo -e "NAMESMOST\t$NAMESMOST"
echo -e "NAMESLEAST\t$NAMESLEAST"
echo -e "COLORSMOST\t$COLORSMOST"
echo -e "COLORSLEAST\t$COLORSLEAST"

# done
exit


