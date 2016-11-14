source("common.R")
source("common2.R")



limited_household_power_consumption$Global_active_power <- as.numeric(limited_household_power_consumption$Global_active_power)
dev.copy(png, "plot2.png")
plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab = "")
dev.off()