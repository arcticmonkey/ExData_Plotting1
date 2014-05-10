setwd("C:\\Users\\Ammar\\Documents\\R Data\\Power")
hpc <- read.table("household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                          "household_power_consumption.txt",
                          nrow = 1, header = TRUE, sep=";")))
hpc$Data <- as.character(hpc$Date)
hpc$Time <- as.character(hpc$Time)
wDays <- paste(hpc$Date, hpc$Time)
wDays <- strptime(wDays, format='%d/%m/%Y %H:%M:%S')
png('plot2.png')
plot(wDays, hpc$Global_active_power, type="l", xlab = '', ylab = 'Global Active Power (kilowatts)' )

dev.off()