setwd("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/birthrate_python/modules/birthrate")
brsrcfile <- "/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/scripts/wikinz/data/LTD404701_20140509_101154_10.csv"

# Read in original data source from Stats NZ ...
#   'brsrcfile' ("LTD404701_20140509_101154_10.csv")
# ... and tidy it to produce nicer CSV ...
#   "birthrate.csv"

lines <- readLines(brsrcfile)
# Drop any line that does not start with a digit
writeLines(lines[grep("^[0-9]", lines)], "birthrate.csv")


