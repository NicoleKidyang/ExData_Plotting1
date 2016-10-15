data <- read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?", stringsAsFactors = FALSE, col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
subData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
gap <- as.numeric(subData$Global_active_power)
datetime <- strptime(paste(subData$Date, subData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
plot(datetime,gap, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, "plot2.png", width=480, height=480)
dev.off()