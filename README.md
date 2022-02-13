# MechaCar Statistical Analysis

## Purpose

The project's purpose was to use R to conduct a series of statistical analyses on production data to provide to the manufacturing team.

## Linear Regression to Predict MPG

![Linear Regression](https://user-images.githubusercontent.com/91762315/153769277-9164c95f-529a-42d0-b584-45d7f7251b67.png)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

When looking at the linear regression output above, one can see that the vehicle length and ground clearance provided a non-random amount of variance to the mpg values. 

### Is the slope of the linear model considered to be zero? Why or why not?

Due to the linear relationship between MPG and other variables, the slope of the line is non-zero. The p-Value is smaller than the significance level, so we can reject the null hypothesis.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The linear model is somewhat effective in predicting the fuel efficiency. The R2 value of ~0.71 indicates that it correctly predicts 71% of the time. In other words about 71% of the variance in the dependent variable, mpg, is explained by the other variables that we provided (vehicle length, vehicle weight, spoiler angle, ground clearance, and all-wheel drive).


## Summary Statistics on Suspension Coils

![Summary Statistics 1](https://user-images.githubusercontent.com/91762315/153769302-1897fe12-168f-4fc8-8a64-a83c6892a1b3.png)


![Summary Statistics 2](https://user-images.githubusercontent.com/91762315/153769320-cfb5903f-6e81-4ebf-81c4-fc6c1c42d50d.png)

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Based on the summary output, we can see that the MechaCar suspension coils do not exceed a variance of 100 PSI when grouping all lots as a total.
Looking at the suspension coil manufacturing as a whole, the coils seem to be within the design variance tolerance of 100 psi. When the individual manufacturing lots are evaluated, we find that Lots 1 & 2 have very little variance and Lot 3 is well outside of the design tolerance.

## T-Tests on Suspension Coils
![T-Tests](https://user-images.githubusercontent.com/91762315/153769361-becd9e90-52eb-49c0-b559-84161fb439da.png)

![T-Tests by lot](https://user-images.githubusercontent.com/91762315/153769363-6671073d-b9a2-4cf4-b827-f58e86dbb116.png)

In the first t-test, which looked at all three lots and compared that to the population we can see that the p-value is above the 0.05 significance level meaning that the two means are statistically similar - combined, there is no statistical difference between all lots and the presumed PSI of 1500 pounds per square inch of the total population.  

It can be identified that Lot 3 has only a 4.168% chance of matching the population mean, which falls under our limit of 5%.

## Study Design: MechaCar vs Competition
In order to quantify how MechaCar could perform against its competitors, we would have to think about how the customers perceive value. In today's environment, I believe the initial cost, maintenance cost and fuel efficiency are most important to look at.  
We could run an ANOVA test across these variables with the null hypothesis that MechaCar performs the same as its competitors and an alternative that it does not. We need to ensure that we collect a large population of data from a third-party source to reduce bias. If the null hypothesis is rejected, we would then need to see if MechaCar performs better or worse than the competition and determine what we could do to improve it.
