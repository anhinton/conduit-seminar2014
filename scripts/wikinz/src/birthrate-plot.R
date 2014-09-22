
births <- read.csv(brfile, col.names=c("year", "births"))

svg("birthrate-R.svg")
plot(births, type="l")
dev.off()
