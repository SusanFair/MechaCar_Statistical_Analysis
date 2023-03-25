# Challenge File

# Challenge - Part 1
#####################################
# Load libraries
install.packages("tidyverse")
library(tidyverse) #call the library

# Import CSV
MechaData <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Linear Regression using all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData)) #generate summary statistics

# Challenge - Part 2
####################################
#Import CSV
SpoilerData <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#Summarize info
total_summary <- subset(SpoilerData) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Lot Summary
lot_summary <- subset(SpoilerData) %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')


# Challenge - Part 3
##################################

# T.test (Population mean = 1,500 lbs / square inch)
populationMean <- 1500
t.test(SpoilerData$PSI, mu=populationMean)   #pass vector of PSI to compare with population

# T.test by Manufacturing Lot
filterLot1 <- subset(SpoilerData, Manufacturing_Lot == "Lot1")
filterLot2 <- subset(SpoilerData, Manufacturing_Lot == "Lot2")
filterLot3 <- subset(SpoilerData, Manufacturing_Lot == "Lot3")

t.test(filterLot1$PSI, mu=populationMean)   #pass vector of PSI to compare with population
t.test(filterLot2$PSI, mu=populationMean)   #pass vector of PSI to compare with population
t.test(filterLot1$PSI, mu=populationMean)   #pass vector of PSI to compare with population

#t.test(filterLot1 <- (subset(SpoilerData, Manufacturing_Lot == "Lot1")$PSI), mu=populationMean) 
