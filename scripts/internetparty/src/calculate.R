
youngNonvoters <- nonvoters$X2011[nonvoters$AgeGroup == "18 to 24"]

youngPop <- sum(pop2013$Value[pop2013$numericAge >= 18 &
                              pop2013$numericAge <= 24])
votePop <- sum(pop2013$Value[pop2013$numericAge >= 18])

youngPopNonvoters <- youngNonvoters/100*youngPop
youngNonvotersPercent <- 100*youngPopNonvoters/votePop
