
svg("pie.svg")
par(mar=c(0, 0, 0, 4))
pie(1, labels="")
par(new=TRUE)
pie(c(5, 95), labels=c("5% threshold", ""),
    col=c(NA, NA), border="black")
par(new=TRUE)
pie(c(youngNonvotersPercent, 100 - youngNonvotersPercent),
    labels=c("", ""),
    col=c(adjustcolor("#642C90", alpha=.5), NA), border=NA)
dev.off()

