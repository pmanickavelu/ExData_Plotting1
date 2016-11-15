source("common.R")

limited_household_power_consumption$Global_active_power <- as.numeric(limited_household_power_consumption$Global_active_power)

dev.copy(png, "plot1.png")

hist(limited_household_power_consumption$Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts)", col = "red")


dev.off()
