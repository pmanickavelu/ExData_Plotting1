source("common.R")

limited_household_power_consumption$Global_active_power <- as.numeric(limited_household_power_consumption$Global_active_power)

png("plot1.png",width=480, height=480)

hist(limited_household_power_consumption$Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts)", col = "red")


dev.off()
