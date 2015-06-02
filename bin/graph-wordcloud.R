#!/usr/bin/env Rscript

# graph-wordcloud.R - given a source directory, output four word clouds illustrating the corpus

# Eric Lease Morgan <emorgan@nd.edu>
# May 26, 2015 - first investigations
# May 27, 2015 - at the cabin, and got first output
# May 29, 2015 - first real, useful output


# require
library( methods )
library( RColorBrewer )
library( wordcloud )

# name
name = commandArgs( trailingOnly = TRUE )

# frequency
frequency <- read.table( paste( name, '/dictionary.db', sep='' ), header = FALSE, comment.char='' )
png( filename = paste( name, "/wordcloud-frequency.png", sep='' ) )
wordcloud( frequency$V1, frequency$V2, max.words = 50, random.order=FALSE, rot.per=0.0, colors=brewer.pal(8, "Dark2") )

# colors
colors <- read.table( paste( name, '/dictionary-colors.db', sep='' ), header = FALSE )
png( filename = paste( name, "/wordcloud-colors.png", sep='' ) )
wordcloud( colors$V1, colors$V2, random.order=FALSE, rot.per=0.0, colors=brewer.pal(8, "Dark2") )

# names
names <- read.table( paste( name, '/dictionary-names.db', sep='' ), header = FALSE )
png( filename = paste( name, "/wordcloud-names.png", sep='' ) )
wordcloud( names$V1, names$V2, max.words = 100, random.order=FALSE, rot.per=0.0, colors=brewer.pal(8, "Dark2") )

# ideas
ideas <- read.table( paste( name, '/dictionary-ideas.db', sep='' ), header = FALSE )
png( filename = paste( name, "/wordcloud-ideas.png", sep='' ) )
wordcloud( ideas$V1, ideas$V2, max.words = 100, random.order=FALSE, rot.per=0.0, colors=brewer.pal(8, "Dark2") )

