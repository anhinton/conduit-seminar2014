
ts <- read.csv(filename)

svg("timeseries.svg")
plot(ts, type="l")
dev.off()
