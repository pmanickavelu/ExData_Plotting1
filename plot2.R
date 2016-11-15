# including Common file reading and process code
source("common.R")
# including Common code file to create the time serice data with date and time.
source("common2.R")

# converting the Global_active_power from character top numeric
limited_household_power_consumption$Global_active_power <- as.numeric(limited_household_power_consumption$Global_active_power)

# initlizing the the graphics device as png file and seting its dimentions 
png("plot2.png",width=480, height=480)

# ploting Global_active_power in relation to datatime
plot(limited_household_power_consumption$DateTime, limited_household_power_consumption$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab = "")

# clising the device for saveing it to the file
dev.off()