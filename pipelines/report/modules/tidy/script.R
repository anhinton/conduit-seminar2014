setwd("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/report/modules/tidy")
nvfile <- "/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/scripts/internetparty/data/non-voters.csv"
popfile <- "/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/scripts/internetparty/data/TABLECODE7511_Data_821b2c90-79e3-4462-9994-4ae796f6e654.csv"

AgeGroups <- c("17 under", "18 to 24", "25 to 44", "45 to 64", "65 over")

nonvoters <- read.csv(nvfile, strip.white=TRUE)
nonvoters$AgeGroup <- factor(nonvoters$AgeGroup, levels=AgeGroups)

population <- read.csv(popfile)
population$numericAge <- as.numeric(gsub("Years.*", "", population$Age))
population$AgeGroup <- cut(population$numericAge,
                           c(-1, 17.5, 24.5, 44.5, 64.5, 91),
                           labels=AgeGroups)
pop2013 <- population[population$Year.at.30.June == 2013, ]
pop2013grouped <- aggregate(pop2013["Value"], list(AgeGroup=pop2013$AgeGroup),
                            sum)
saveRDS(nonvoters, file="nonvoters.rds")
saveRDS(pop2013, file="pop2013.rds")
saveRDS(pop2013grouped, file="pop2013grouped.rds")
