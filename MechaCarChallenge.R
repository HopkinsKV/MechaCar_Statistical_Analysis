library(dplyr)
library(tidyverse)
#Deliverable 1
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))
#Deliverable 2 
suspension <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- suspension %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI),SD = sd(PSI), .groups = 'keep')
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI),SD = sd(PSI), .groups = 'keep')
#Deliverable 3
t.test(suspension$PSI,mu=1500)
t.test(subset(suspension,Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(suspension,Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(suspension,Manufacturing_Lot == "Lot3")$PSI, mu=1500)