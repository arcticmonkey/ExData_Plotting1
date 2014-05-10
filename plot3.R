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

png('plot3.png')

plot(wDays, hpc$Sub_metering_1, type="l", xlab = '', ylab = 'Energy sub metering' )

lines(wDays,hpc$Sub_metering_2, col = "Red")

lines(wDays,hpc$Sub_metering_3, col = "Blue" )

legend('topright', names(hpc)[7:9] ,lty=1, col=c('black', 'red', 'blue'), bty='n', cex=.75)

dev.off()

