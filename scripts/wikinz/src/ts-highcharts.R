
require(methods)
require(rCharts)

ts <- read.csv(filename)
ts$x <- ts[[1]]
ts$y <- ts[[2]]
           
plot <- hPlot(y ~ x, ts, type="line")
writeLines(capture.output(plot$print("hts", include_assets=TRUE)),
           "hts.html")

