setwd("C:\\Users\\Ammar\\Documents\\R Data\\Power")
hpc <- read.table("household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                          "household_power_consumption.txt",
                          nrow = 1, header = TRUE, sep=";")))

hpc$Date <- as.Date(hpc$Date)
hpc$Time <- strptime(hpc$Time,"%H:%M:%S")


png('plot1.png')

hist(hpc$Global_active_power, col = "Red", main='Global Active Power',
     xlab='Global Active Power (kilowatts)'))


dev.off()