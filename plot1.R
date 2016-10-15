data <- read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?", stringsAsFactors = FALSE, col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
subData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
gap <- as.numeric(subData$Global_active_power)
hist(gap,col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width = 480, height = 480)
dev.off()