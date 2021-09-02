load("acs2017_ny_data.RData")
#glimpse(acs2017_ny) try this later
acs2017_ny[1:10,1:7]
attach(acs2017_ny)
summary(acs2017_ny)
print(NN_obs <- length(AGE))
summary(AGE[female == 1])
summary(AGE[!female])
# here i want to find average ages of men and women
mean(AGE[female == 1])
sd(AGE[female == 1])
mean(AGE[!female])
sd(AGE[!female])
