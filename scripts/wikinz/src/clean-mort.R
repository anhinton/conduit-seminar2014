
mort <- read.csv(srcfile)

nzmort <- mort$Country == "New Zealand" &
          mort$Variable == "Maternal mortality"

write.csv(mort[nzmort, ], "clean.csv", row.names=FALSE)

