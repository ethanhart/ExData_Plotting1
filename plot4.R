plot4 <- function () {
    data <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

    # Subset data by date
    data_date_sub <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

    # Create date objects (for x-axis)
    dt<-paste(data_date_sub$Date,data_date_sub$Time)
    dt<-strptime(dt,"%d/%m/%Y %T")

    # Open png
    png(filename="plot4.png", width=480, height=480, units="px")

    # 2x2 graph configuration
    par(mfcol=c(2,2))

    # Graph 1 - Global Active Power (kw) vs datetime (unlabled)
    plot(dt, data_date_sub$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="n")
    lines(dt, data_date_sub$Global_active_power)

    # Graph 2 - Energy sub metering vs datetime (unlabled)
    plot(dt, data_date_sub$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
    lines(dt, data_date_sub$Sub_metering_1)
    lines(dt, data_date_sub$Sub_metering_2, col="red")
    lines(dt, data_date_sub$Sub_metering_3, col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1, bty="n")

    # Graph 3 - Voltage vs datetime
    plot(dt, data_date_sub$Voltage, xlab="datetime", ylab="Voltage", type="n")
    lines(dt, data_date_sub$Voltage)

    # Graph 4- Global_reactive_power vs datetime
    plot(dt, data_date_sub$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="n")
    lines(dt, data_date_sub$Global_reactive_power)

    # Close png
    dev.off()
}
