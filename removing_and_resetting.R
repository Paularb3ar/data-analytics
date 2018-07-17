#How to remove records with missing data

#Firstly, make a backup of loaded dataset

fin_backup <- fin

#Check which rows have NA values for the industry column

fin2[is.na(fin2$Industry),]

#Now subset fin2 with the opposite statement

fin2 <- fin2[!is.na(fin2$Industry),]

#Note that the row index names are still numbered to 500
#Reset dataframe index with 2 methods
#First method

rownames(fin2) <- 1:nrow(fin2)

#Second method

rownames(fin2) <- NULL

