plot2 <- function () {
    data <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

    # Subset data by date
    data_date_sub <- data[data$Date == "1/2/2007" | data_$Date == "2/2/2007",]

    # Create date objects (for x-axis)
    dt<-paste(data_date_sub$Date,data_date_sub$Time)
    dt<-strptime(dt,"%d/%m/%Y %T")

    # Create histogram in png
    png(filename="plot2.png", width=480, height=480, units="px")
    plot(dt, data_date_sub$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="n")
    lines(dt, data_date_sub$Global_active_power)
    dev.off()
}
