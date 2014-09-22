
# Function to generate nice long-form CSV from World Bank CSV export
# for ONE YEAR AND ONLY for OECD countries 
cleanWorldBank <- function(filename, year) {
    OECD <- c("Austria", "Belgium", "Canada", "Chile", "Czech", "Republic", 
              "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", 
              "Hungary", "Iceland", "Ireland", "Israel", "Italy", "Japan", 
              "Korea,", "South", "Luxembourg", "Mexico", "Netherlands", "New", 
              "Zealand", "Norway", "Poland", "Portugal", "Slovak", "Republic", 
              "Slovenia", "Spain", "Sweden", "Switzerland", "Turkey",
              "United Kingdom", "United States")
    # Two lines at top we don't want
    df <- read.csv(filename, skip=2, as.is=TRUE)
    # First four columns are Country name, code and Indicator name, code
    # Remaining columns are years
    subDF <- df[df$Country.Name %in% OECD, c(1:4, grep(year, colnames(df)))]
    write.csv(subDF, "clean.csv", row.names=FALSE)
}
