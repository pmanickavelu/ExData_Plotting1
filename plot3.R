# including Common file reading and process code
source("common.R")
# including Common code file to create the time serice data with date and time.
source("common2.R")

# convert the Sub_metering_ data to numeric from charecter
limited_household_power_consumption$Sub_metering_1 <- as.numeric(limited_household_power_consumption$Sub_metering_1)
limited_household_power_consumption$Sub_metering_2 <- as.numeric(limited_household_power_consumption$Sub_metering_2)
limited_household_power_consumption$Sub_metering_3 <- as.numeric(limited_household_power_consumption$Sub_metering_3)

# initlizing the the graphics device as png file and seting its dimentions 
png("plot3.png",width=480, height=480)

# initlize the plot. to set base plot
plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering")

# plot the line three Sub_metering_ with respect to datetime.
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_1, type="l")
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_2, type="l", col="red")
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_3, type="l", col="blue")

# set legend for the plot
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"))

# clising the device for saveing it to the file
dev.off()
