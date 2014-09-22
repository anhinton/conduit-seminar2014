setwd("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/report/modules/calculate")
nonvoters <- readRDS("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/report/modules/tidy/nonvoters.rds")
pop2013 <- readRDS("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/report/modules/tidy/pop2013.rds")

youngNonvoters <- nonvoters$X2011[nonvoters$AgeGroup == "18 to 24"]

youngPop <- sum(pop2013$Value[pop2013$numericAge >= 18 &
                              pop2013$numericAge <= 24])
votePop <- sum(pop2013$Value[pop2013$numericAge >= 18])

youngPopNonvoters <- youngNonvoters/100*youngPop
youngNonvotersPercent <- 100*youngPopNonvoters/votePop
saveRDS(youngNonvotersPercent, file="youngNonvotersPercent.rds")
