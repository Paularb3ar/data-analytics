#Check rows with at least one NA

complete.cases(fin)

#Subset the rows with NA, does not take into account empty rows, 

fin_incomplete <- fin[!complete.cases(fin),]

#create new import

fin2 <- read.csv("Future-500.csv", na.strings=c(""))

#now new subset will have more rows

fin2_incomplete <- fin2[!complete.cases(fin2),]
