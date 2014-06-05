plot3 <- function () {
    data <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
    
    # Subset data by date
    data_date_sub <- data[data$Date == "1/2/2007" | data_$Date == "2/2/2007",]
    
    # Create date objects (for x-axis)
    dt<-paste(data_date_sub$Date,data_date_sub$Time)
    dt<-strptime(dt,"%d/%m/%Y %T")
    
    # Create histogram in png
    png(filename="plot3.png", width=480, height=480, units="px")
    plot(dt, data_date_sub$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
    lines(dt, data_date_sub$Sub_metering_1)
    lines(dt, data_date_sub$Sub_metering_2, col="red")
    lines(dt, data_date_sub$Sub_metering_3, col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1)
    dev.off()
}
