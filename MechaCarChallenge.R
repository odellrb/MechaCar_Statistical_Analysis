library(dplyr)

### DELIVERABLE 1 ###
# Import the csv file
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# Perform linear regression that predicts the mpg of MechaCar prototypes
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg)
Mecha_lm

# view using summary
summary(Mecha_lm)

# view R-squared
summary(Mecha_lm)$r.squared
