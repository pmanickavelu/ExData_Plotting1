# including Common file reading and process code
source("common.R")
# including Common code file to create the time serice data with date and time.
source("common2.R")


# convert Global_active_power, Global_reactive_power, Voltage and Sub_metering_ from char to numering for preparing it to plot
limited_household_power_consumption$Global_active_power <- as.numeric(limited_household_power_consumption$Global_active_power)
limited_household_power_consumption$Global_reactive_power <- as.numeric(limited_household_power_consumption$Global_reactive_power)
limited_household_power_consumption$Voltage <- as.numeric(limited_household_power_consumption$Voltage)
limited_household_power_consumption$Sub_metering_1 <- as.numeric(limited_household_power_consumption$Sub_metering_1)
limited_household_power_consumption$Sub_metering_2 <- as.numeric(limited_household_power_consumption$Sub_metering_2)
limited_household_power_consumption$Sub_metering_3 <- as.numeric(limited_household_power_consumption$Sub_metering_3)

# initlizing the the graphics device as png file and seting its dimentions 
png("plot4.png",width=480, height=480)

# set mfrow to 2X2 to plot 4 graphs row wise
par(mfrow = c(2, 2))

# ploting the first graph with Global_active_power in relation to datatime
plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Global_active_power, type="l", ylab="Global Active Power", xlab = "")

# ploting the secound graph with Voltage in relation to datatime
plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Voltage, type="l", ylab="Voltage", xlab = "datetime")

# initilizing the third plot for ploting the 3 sub metering time serise line.
plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering")

# drwaing the three time series lines for sub metering
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_1, type="l")
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_2, type="l", col="red")
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_3, type="l", col="blue")
# set the legend for the line which were ploted
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"))

# ploting the fourth graph for Global_reactive_power with relation to datetime.
plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab = "datetime")

# clising the device for saveing it to the file
dev.off()