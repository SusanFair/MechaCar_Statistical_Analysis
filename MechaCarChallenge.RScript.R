# Challenge File

# Challenge - Part 1
# Load libraries
install.packages("tidyverse")
library(tidyverse) #call the library

# Import CSV
MechaData <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Linear Regression using all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData)) #generate summary statistics

# Challenge - Part 2

#Import CSV
SpoilerData <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#Summarize info
total_summary <- subset(SpoilerData) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Lot Summary
lot_summary <- subset(SpoilerData) %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
