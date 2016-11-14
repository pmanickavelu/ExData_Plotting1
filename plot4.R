source("common.R")
source("common2.R")

par(mfrow = c(2, 2))

limited_household_power_consumption$Global_active_power <- as.numeric(limited_household_power_consumption$Global_active_power)
limited_household_power_consumption$Global_reactive_power <- as.numeric(limited_household_power_consumption$Global_reactive_power)
limited_household_power_consumption$Voltage <- as.numeric(limited_household_power_consumption$Voltage)
limited_household_power_consumption$Sub_metering_1 <- as.numeric(limited_household_power_consumption$Sub_metering_1)
limited_household_power_consumption$Sub_metering_2 <- as.numeric(limited_household_power_consumption$Sub_metering_2)
limited_household_power_consumption$Sub_metering_3 <- as.numeric(limited_household_power_consumption$Sub_metering_3)

dev.copy(png, "plot4.png")

plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Global_active_power, type="l", ylab="Global Active Power", xlab = "")

plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Voltage, type="l", ylab="Voltage", xlab = "datetime")

plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_1, type="n")

lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_1, type="l")
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_2, type="l", col="red")
lines(limited_household_power_consumption$DateTime, limited_household_power_consumption$Sub_metering_3, type="l", col="blue")


plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab = "datetime")

dev.off()