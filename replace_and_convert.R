#replacing patterns with sub() and gsub(), first and all respectively

fin$Expenses <- gsub(" Dollars", "", fin$Expenses)

fin$Expenses <- gsub(",", "", fin$Expenses)

#since $ is a special character in R, create an escape sequence with double backslash

fin$Revenue <- gsub("\\$","", fin$Revenue)

fin$Revenue <- gsub(",","", fin$Revenue)

#Growth needs to be divided by 100 after percentage sign has been removed

fin$Growth <- gsub("%", "", fin$Growth)

#now convert to numeric since gsub converted to character already

fin$Expenses <- as.numeric(fin$Expenses)
fin$Revenue <- as.numeric(fin$Revenue)
fin$Growth <- as.numeric(fin$Growth)