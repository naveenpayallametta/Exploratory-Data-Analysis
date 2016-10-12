#Load Power Consumption Data
powerdata <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSet_powerData <- powerdata[powerdata$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot2
globalActivePower <- as.numeric(subSet_powerData$Global_active_power)
datetime <- strptime(paste(subSet_powerData$Date, subSet_powerData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
