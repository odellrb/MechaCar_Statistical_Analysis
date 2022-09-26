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

### DELIVERABLE 2 ###
# Import the csv file
Suspension_Coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
# Create a summary table for suspension coils
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), Std_Dev = sd(PSI))
total_summary
# Create a summary data frame grouped by Manufacturing Lot
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), Std_Dev = sd(PSI))
lot_summary

### DELIVERABLE 3 ###
# Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(Suspension_Coil$PSI, mu = 1500)

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
# Lot 1
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)

# Lot 2
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)

# Lot 3
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)

