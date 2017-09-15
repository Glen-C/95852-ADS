
library(plyr)
library(knitr)

# Read in csv file
cdc2015_mortalities = read.csv(file='2015_data.csv', header=T)

# Get size of file
expend_15.size = dim(cdc2015_mortalities)

# Extract records with age > 65 & columns detail_age and manner_of_death
cdc2015_mortalities_65over = cdc2015_mortalities[which(cdc2015_mortalities$detail_age > 65), c("detail_age","manner_of_death")]

# Store first 100 records in variable (headder)
headder5 = head(cdc2015_mortalities_65over, 100)

# Convert manner_of_death to Factors
cdc2015_mortalities_65over$manner_of_death <- factor(cdc2015_mortalities_65over$manner_of_death)

# Define recode values from
manner.recode = c("1", "2", "3", "4", "5", "6", "7")

# Define recode values from
manner.recode.to = c("Accident", "Suicide", "Homicide", "Pending investigation", "Could not determine", "Self-Inflicted", "Natural")

# Use mapvalues function to change all numbers to descriptive text
cdc2015_mortalities_65over$manner_of_death = mapvalues(cdc2015_mortalities_65over$manner_of_death, from=manner.recode, to=manner.recode.to)

# Remove full 2015 dataset
rm(cdc2015_mortalities)

# Store first 100 records in variable (headder)
headder5 = head(cdc2015_mortalities_65over, 100)

############################################

# Read in csv file
cdc2014_mortalities = read.csv(file='2014_data.csv', header=T)

# Get size of file
expend_14.size = dim(cdc2014_mortalities)

# Extract records with age > 65 & columns detail_age and manner_of_death
cdc2014_mortalities_65over = cdc2014_mortalities[which(cdc2014_mortalities$detail_age > 65), c("detail_age","manner_of_death")]

# Store first 100 records in variable (headder)
headder4 = head(cdc2014_mortalities_65over, 100)

# Convert manner_of_death to Factors
cdc2014_mortalities_65over$manner_of_death <- factor(cdc2014_mortalities_65over$manner_of_death)

# Use mapvalues function to change all numbers to descriptive text.
cdc2014_mortalities_65over$manner_of_death = mapvalues(cdc2014_mortalities_65over$manner_of_death, from=manner.recode, to=manner.recode.to)

# Remove full 2014 dataset
rm(cdc2014_mortalities)

# Store first 100 records in variable (headder)
headder4 = head(cdc2014_mortalities_65over, 100)

############################################

# Read in csv file
cdc2013_mortalities = read.csv(file='2013_data.csv', header=T)

# Get size of file
expend_13.size = dim(cdc2013_mortalities)

# Extract records with age > 65 & columns detail_age and manner_of_death
cdc2013_mortalities_65over = cdc2013_mortalities[which(cdc2013_mortalities$detail_age > 65), c("detail_age","manner_of_death")]

# Store first 100 records in variable (headder)
headder3 = head(cdc2013_mortalities_65over, 100)

# Convert manner_of_death to Factors
cdc2013_mortalities_65over$manner_of_death <- factor(cdc2013_mortalities_65over$manner_of_death)

# Use mapvalues function to change all numbers to descriptive text.
cdc2013_mortalities_65over$manner_of_death = mapvalues(cdc2013_mortalities_65over$manner_of_death, from=manner.recode, to=manner.recode.to)

# Remove full 2013 dataset
rm(cdc2013_mortalities)

# Store first 100 records in variable (headder)
headder3 = head(cdc2013_mortalities_65over, 100)

############################################

# Read in csv file
cdc2012_mortalities = read.csv(file='2012_data.csv', header=T)

# Get size of file
expend_12.size = dim(cdc2012_mortalities)

# Extract records with age > 65 & columns detail_age and manner_of_death
cdc2012_mortalities_65over = cdc2012_mortalities[which(cdc2012_mortalities$detail_age > 65), c("detail_age","manner_of_death")]

# Store first 100 records in variable (headder)
headder2 = head(cdc2012_mortalities_65over, 100)

# Convert manner_of_death to Factors
cdc2012_mortalities_65over$manner_of_death <- factor(cdc2012_mortalities_65over$manner_of_death)

# Use mapvalues function to change all numbers to descriptive text.
cdc2012_mortalities_65over$manner_of_death = mapvalues(cdc2012_mortalities_65over$manner_of_death, from=manner.recode, to=manner.recode.to)

# Remove full 2012 dataset
rm(cdc2012_mortalities)

# Store first 100 records in variable (headder)
headder2 = head(cdc2012_mortalities_65over, 100)

############################################

# Read in csv file
cdc2011_mortalities = read.csv(file='2011_data.csv', header=T)

# Get size of file
expend_11.size = dim(cdc2011_mortalities)

# Extract records with age > 65 & columns detail_age and manner_of_death
cdc2011_mortalities_65over = cdc2011_mortalities[which(cdc2011_mortalities$detail_age > 65), c("detail_age","manner_of_death")]

# Store first 100 records in variable (headder)
headder2 = head(cdc2011_mortalities_65over, 100)

# Convert manner_of_death to Factors
cdc2011_mortalities_65over$manner_of_death <- factor(cdc2011_mortalities_65over$manner_of_death)

# Use mapvalues function to change all numbers to descriptive text.
cdc2011_mortalities_65over$manner_of_death = mapvalues(cdc2011_mortalities_65over$manner_of_death, from=manner.recode, to=manner.recode.to)

# Remove full 2011 dataset
rm(cdc2011_mortalities)

# Store first 100 records in variable (headder)
headder1 = head(cdc2011_mortalities_65over, 100)

# Use mutate function to add year column to each dataset
cdc2011_mortalities_65over = mutate(cdc2011_mortalities_65over, year = "2011")
cdc2012_mortalities_65over = mutate(cdc2012_mortalities_65over, year = "2012")
cdc2013_mortalities_65over = mutate(cdc2013_mortalities_65over, year = "2013")
cdc2014_mortalities_65over = mutate(cdc2014_mortalities_65over, year = "2014")
cdc2015_mortalities_65over = mutate(cdc2015_mortalities_65over, year = "2015")

# combine dataframes (on top of each other)
CDC_Mortalities_Data_2011_2015 <- rbind(cdc2011_mortalities_65over, cdc2012_mortalities_65over, cdc2013_mortalities_65over, cdc2014_mortalities_65over, cdc2015_mortalities_65over)

# Use ddply function to sumarise by year & manner of death
CDC.count.summary = ddply(CDC_Mortalities_Data_2011_2015, c("year", "manner_of_death"), summarize, counter.CDC = length(manner_of_death))

# Print all detail_age levels
levels(factor(CDC_Mortalities_Data_2011_2015$detail_age))

# Write full data file
write.csv(CDC_Mortalities_Data_2011_2015, file = "CDC_Mortalities_Data_2011_2015.csv",row.names=FALSE, na="")

# Write summary data file
write.csv(CDC.count.summary, file = "CDC_count_summary.csv",row.names=FALSE, na="")

