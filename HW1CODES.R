load("acs2017_ny_data.RData")
#glimpse(acs2017_ny) try this later
acs2017_ny[1:10,1:7]
attach(acs2017_ny)
summary(acs2017_ny)
print(NN_obs <- length(AGE))
