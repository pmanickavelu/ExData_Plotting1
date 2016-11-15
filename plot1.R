# including Common file reading and process code
source("common.R")

# converting the Global_active_power from character top numeric
limited_household_power_consumption$Global_active_power <- as.numeric(limited_household_power_consumption$Global_active_power)

# initlizing the the graphics device as png file and seting its dimentions 
png("plot1.png",width=480, height=480)

# ploting the hist for Global_active_power
hist(limited_household_power_consumption$Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts)", col = "red")

# clising the device for saveing it to the file
dev.off()
