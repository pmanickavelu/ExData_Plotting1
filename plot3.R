source("common.R")
source("common2.R")
limited_household_power_consumption$Sub_metering_1 <- as.numeric(limited_household_power_consumption$Sub_metering_1)
limited_household_power_consumption$Sub_metering_2 <- as.numeric(limited_household_power_consumption$Sub_metering_2)
limited_household_power_consumption$Sub_metering_3 <- as.numeric(limited_household_power_consumption$Sub_metering_3)
dev.copy(png, "plot3.png")
plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering")

lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_1, type="l")
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_2, type="l", col="red")
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_3, type="l", col="blue")

legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"))
dev.off()
