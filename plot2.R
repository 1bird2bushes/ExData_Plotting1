# 1bird2bushes
# 07/11/15
# This script is brought to you by the letter 'L'

#This portion reads in a portion of the table s/t that not all of it takes up precious memory
data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, nrows=69516, na.strings="?", stringsAsFactors=FALSE)
data <- data[66637:69516,]

#concatenate date and time from the original df, and use strptime with the below formatting
datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y%H:%M:%S")

#Plot the data, and make the circle portion white s/t they don't show but actually preset the plot to have the correct size
plot(datetime, data$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", col="wHiTe")
lines(datetime,data$Global_active_power)

#Save plot as plot2.png
dev.copy(png, file="plot2.png")
dev.off()