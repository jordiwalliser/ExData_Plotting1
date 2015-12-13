PowerConsumptionFile <- "./Data/household_power_consumption.txt"
FileData <- read.table(PowerConsumptionFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SubSetData <- FileData[FileData$Date %in% c("1/2/2007","2/2/2007") ,]
DataTime <- strptime(paste(SubSetData$Date, SubSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(SubSetData$Global_active_power)
png("plot2.png", width=500, height=500)
plot(DataTime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


