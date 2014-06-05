plot1 <- function () {
    data <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
    
    # Subset data by date
    data_date_sub <- data[data$Date == "1/2/2007" | data_$Date == "2/2/2007",]
    
    # Create histogram in png
    png(filename="plot1.png", width=480, height=480, units="px")
    hist(data_date_sub$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
    dev.off()
}