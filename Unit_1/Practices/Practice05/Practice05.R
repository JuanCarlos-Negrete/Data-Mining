#Practice #05
?read.csv()

# Method 1: Select the file manually
stats <- read.csv(file.choose())
stats

# Method 2: Set Working Directory and Read Data
getwd()
#windows
setwd("C:\\Users\\DataMining\\Documents\\Rprojects")

#Filter countries by Low income
stats[stats$Income.Group == "Low income",]

#Filter countries by Lower middle income
stats[stats$Income.Group == "Lower middle income",]

#Filter countries by Upper middle income
stats[stats$Income.Group == "Upper middle income",]

