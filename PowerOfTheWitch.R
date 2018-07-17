#Filtering, 'Which' ignores NAs and passes a row number

fin[which(fin$Revenue == 9746272),]

#Show all companies with 45 employees

fin[which(fin$Employees == 45),]