PowerConsumptionFile <- "./Data/household_power_consumption.txt"
FileData <- read.table(PowerConsumptionFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SubSetData <- FileData[FileData$Date %in% c("1/2/2007","2/2/2007") ,]
DataTime <- strptime(paste(SubSetData$Date, SubSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(SubSetData$Global_active_power)
SubMetering1 <- as.numeric(SubSetData$Sub_metering_1)
SubMetering2 <- as.numeric(SubSetData$Sub_metering_2)
SubMetering3 <- as.numeric(SubSetData$Sub_metering_3)
png("plot3.png", width=500, height=500)
plot(DataTime, SubMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(DataTime, SubMetering2, type="l", col="red")
lines(DataTime, SubMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()