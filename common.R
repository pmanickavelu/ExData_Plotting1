# setting the default mfrow to 1X1 to plot a single graph per plot
par(mfrow=c(1,1))
# reading the full data set
household_power_consumption <- read.csv("household_power_consumption.txt", sep=";", stringsAsFactors = FALSE)
# converting the date to date which is read as charecter
household_power_consumption$Date <- as.Date(household_power_consumption$Date,"%d/%m/%Y")
# processing the full data set to get the required sub set limited_household_power_consumption which is for the period of 2 days from 1st fem 2007 to 2nd feb 2007
limited_household_power_consumption <- household_power_consumption[household_power_consumption$Date >= as.Date("2007-2-1","%Y-%m-%d") & household_power_consumption$Date <= as.Date("2007-2-2","%Y-%m-%d"),]