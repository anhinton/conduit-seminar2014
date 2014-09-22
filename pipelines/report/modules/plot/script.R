setwd("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/report/modules/plot")
nonvoters <- readRDS("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/report/modules/tidy/nonvoters.rds")
pop2013grouped <- readRDS("/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/report/modules/tidy/pop2013grouped.rds")

install.packages("gridSVG", lib="~/.OA.Rlibs",
                 repo="http://cran.stat.auckland.ac.nz/")
library(gridSVG, lib.loc="~/.OA.Rlibs")
library(grid)
library(lattice)

gridsvg("non-voters.svg")
print(barchart(nonvoters$X2011 ~ nonvoters$AgeGroup,
               origin=0,
               ylab="Percent", xlab="Age Group",
               main="Percentage of Eligible Voters Who Did Not Vote",
               sub="Source: Statistics New Zealand (New Zealand General Social Survey)"),
      prefix="nvplot")
grid.edit("nvplot.sub", gp=gpar(col="grey", cex=.7),
          just="top")
grid.hyperlink("nvplot.sub",
               href="http://www.stats.govt.nz/browse_for_stats/people_and_communities/Well-being/civic-human-rights/non-voters-2008-2011-gen-elections.aspx")
dev.off()

gridsvg("population.svg")
print(barchart(pop2013grouped$Value/100000 ~ pop2013grouped$AgeGroup,
               origin=0,
               ylab="Population (100,000s)", xlab="Age Group",
               main="Estimated Population (June 2013)",
               sub="Source: Statistics New Zealand (NZ.Stat)"),
      prefix="poplot")
grid.edit("poplot.sub", gp=gpar(col="grey", cex=.7),
          just="top")
grid.hyperlink("poplot.sub",
               href="http://nzdotstat.stats.govt.nz/wbos/Index.aspx")
dev.off()



