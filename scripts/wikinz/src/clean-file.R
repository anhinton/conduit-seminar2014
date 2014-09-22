
# Read in original data source from Stats NZ ...
#   'srcfile' (e.g., "LTD404701_20140509_101154_10.csv")
# ... and tidy it to produce nicer CSV ...
#   "clean.csv"

lines <- readLines(srcfile)
# Drop any line that does not start with a digit
# and replace any ".." with NA
lines <- gsub('".."', "NA", lines)
writeLines(lines[grep("^[0-9]", lines)], "clean.csv")

