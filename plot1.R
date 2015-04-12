epc=read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
dt <- paste(epc$Date, epc$Time)
epc$datetime <- strptime(dt, "%d/%m/%Y %H:%M:%S")
hist(epc$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)", xlim = c(0,6), xaxp = c(0,6,3))