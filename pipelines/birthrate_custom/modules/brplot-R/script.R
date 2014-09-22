setwd("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/birthrate_custom/modules/brplot-R")
brfile <- "/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/birthrate_custom/modules/birthrate/birthrate.csv"

births <- read.csv(brfile, col.names=c("year", "births"))

svg("birthrate-R.svg")
plot(births, type="l")
dev.off()

