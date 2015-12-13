PowerConsumptionFile <- "./Data/household_power_consumption.txt"
FileData <- read.table(PowerConsumptionFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SubSetData <- FileData[FileData$Date %in% c("1/2/2007","2/2/2007") ,]
GlobalActivePower <- as.numeric(SubSetData$Global_active_power)
png("plot1.png", width=500, height=500)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
