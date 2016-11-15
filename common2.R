# creating a new DateTime column using the data and time columns for the orignal data.
limited_household_power_consumption$DateTime <- as.POSIXlt(paste(limited_household_power_consumption$Date,limited_household_power_consumption$Time), "%Y-%m-%d %H:%M%S")
