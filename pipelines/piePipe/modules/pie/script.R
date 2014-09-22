setwd("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/piePipe/modules/pie")
nonvoters <- readRDS("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/piePipe/modules/tidy/nonvoters.rds")
pop2013 <- readRDS("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/piePipe/modules/tidy/pop2013.rds")

youngNonvoters <- nonvoters$X2011[nonvoters$AgeGroup == "18 to 24"]

youngPop <- sum(pop2013$Value[pop2013$numericAge >= 18 &
                              pop2013$numericAge <= 24])
votePop <- sum(pop2013$Value[pop2013$numericAge >= 18])

youngPopNonvoters <- youngNonvoters/100*youngPop
youngNonvotersPercent <- 100*youngPopNonvoters/votePop

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


