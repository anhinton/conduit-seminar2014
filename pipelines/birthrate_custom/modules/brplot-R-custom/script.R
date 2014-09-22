setwd("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/birthrate_custom/modules/brplot-R-custom")
brfile <- "/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/birthrate_custom/modules/birthrate/birthrate.csv"

births <- read.csv(brfile, col.names=c("year", "births"))

svg("birthrate-R.svg")
plot(births, type="l")
abline(v=1945 +
       as.numeric(as.Date("1945-09-02") - as.Date("1945-01-01"))/365)
dev.off()

