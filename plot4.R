source("common.R")
source("common2.R")



limited_household_power_consumption$Global_active_power <- as.numeric(limited_household_power_consumption$Global_active_power)
limited_household_power_consumption$Global_reactive_power <- as.numeric(limited_household_power_consumption$Global_reactive_power)
limited_household_power_consumption$Voltage <- as.numeric(limited_household_power_consumption$Voltage)
limited_household_power_consumption$Sub_metering_1 <- as.numeric(limited_household_power_consumption$Sub_metering_1)
limited_household_power_consumption$Sub_metering_2 <- as.numeric(limited_household_power_consumption$Sub_metering_2)
limited_household_power_consumption$Sub_metering_3 <- as.numeric(limited_household_power_consumption$Sub_metering_3)

png("plot4.png",width=480, height=480)
par(mfrow = c(2, 2))
plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Global_active_power, type="l", ylab="Global Active Power", xlab = "")

plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Voltage, type="l", ylab="Voltage", xlab = "datetime")

plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering")

lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_1, type="l")
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_2, type="l", col="red")
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_3, type="l", col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"))

plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab = "datetime")

dev.off()