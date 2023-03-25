# Challenge File

# Load libraries
install.packages("tidyverse")
library(tidyverse) #call the library

# Import CSV
MechaData <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Linear Regression using all six variables
lm()


lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData)) #generate summary statistics
