# I assume that the data file is already downloaded from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# and extracted to working directory\household_power_consumption.txt

# We only use data from the dates 2007-02-01 and 2007-02-02, represented as 1/2/2007 and 2/2/2007 in the data set
# they are stored on lines 66638 - 69517, inclusive, so we can read these lines only

data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = FALSE, skip = 66637, nrows = 2880, col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")); 

png(filename = "plot1.png", width = 480, height = 480, bg = "transparent");
# histogram color selected using Color Picker Tool in GIMP
hist(data$Global_active_power, col="#fb2500", main = "Global Active Power", xlab = "Global Active Power (kilowatts)");
dev.off();