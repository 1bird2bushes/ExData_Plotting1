# 1bird2bushes
# 07/11/15
# This script is brought to you by the letter 'F'

#This portion reads in a portion of the table s/t that not all of it takes up precious memory
data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, nrows=69516, na.strings="?", stringsAsFactors=FALSE)
data <- data[66637:69516,]

#concatenate date and time from the original df, and use strptime with the below formatting
datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y%H:%M:%S")


par(mfrow = c(2,2))


########## This is for the first plot
#Plot the data, and make the circle portion white s/t they don't show but actually preset the plot to have the correct size
plot(datetime, data$Global_active_power, xlab="", ylab="Global Active Power", col="wHiTe")
lines(datetime,data$Global_active_power)
##########

########## This is for the second plot
#Plot the data, and make the circle portion white s/t they don't show but actually preset the plot to have the correct size
plot(datetime, data$Voltage, xlab="datetime",ylab="Voltage", col="wHiTe")
lines(datetime,data$Voltage)
##########

########## This is for the third plot
#Plot the data, and make the circle portion white s/t they don't show but actually preset the plot to have the correct size
plot(datetime, data$Sub_metering_1, xlab="", ylab="Energy sub metering", col="wHiTe")
lines(datetime,data$Sub_metering_1, col="black")
lines(datetime,data$Sub_metering_2, col="red")
lines(datetime,data$Sub_metering_3, col="blue")

#This adds a legend to the plot
legend("top", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty="n", cex=0.65, lty=c(1,1), lwd=c(1,1), col=c("black","red","blue")) 
##########

########## This is for the fourth plot
#Plot the data, and make the circle portion white s/t they don't show but actually preset the plot to have the correct size
plot(datetime, data$Global_reactive_power, xlab="datetime",ylab="Global_reactive_power", col="wHiTe")
lines(datetime,data$Global_reactive_power)
##########

#Save plot as plot4.png
dev.copy(png, file="plot4.png")
dev.off()