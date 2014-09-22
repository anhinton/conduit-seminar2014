
df <- read.csv(filename)[, index]
write.table(df, "subset.csv", sep=",", col.names=names, row.names=FALSE)
