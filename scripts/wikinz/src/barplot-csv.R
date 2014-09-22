
# Produce barplot from CSV file that is assumed to have
# factor as first column and numeric as second column

barplotCSV <- function(filename) {
    df <- read.csv(filename)
    names(df) <- c("x", "y")
    df <- df[rev(order(df$y)), ]
    svg("barplot-csv.svg")
    barplot(df$y, names=df$x, las=2)
    dev.off()
}
