# 1bird2bushes
# 07/11/15
# This script is brought to you by the letter 'D'

#This portion reads in a portion of the table s/t that not all of it takes up precious memory
data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, nrows=69516, na.strings="?", stringsAsFactors=FALSE)
data <- data[66637:69516,]

#Plot a histogram, with appropriate labels and such
hist(data$Global_active_power,main = "Global Active Power", xlab="Global Active Power (kilowatts)", col="Red")

#Save plot as plot1.png
dev.copy(png, file="plot1.png")
dev.off()