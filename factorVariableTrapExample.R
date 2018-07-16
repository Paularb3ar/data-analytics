#FactaorVariableTrap

fin <- read.csv("Future-500.csv")

fin$Profit <- factor(fin$Profit)

fin$Profit <- as.character(fin$Profit)

fin$Profit <- as.numeric(fin$Profit)