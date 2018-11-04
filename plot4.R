# read hpc file 
hpc <- read.csv("H:/Projects/Courses/R/EDA/ExploratoryDataAnalysis/project_1/hpc.txt", sep="")
head(hpc)
par(mfcol=c(2,2))



# plot data
plot(hpc$Global_active_power, type="l",xaxt="n",xlab="", ylab="Global Active Power (kilowatts)")
# check which point correspond to what weekday
hpc$weekday[1440] # Thu
hpc$weekday[1441] # Fri
nrow(hpc)+1 # Sat
# add axis with abbrevations of weekdays
axis(1, at=c(1, nrow(hpc)/2, as.numeric(nrow(hpc)+1)), labels=c("Thu", "Fri", "Sat"))


# plot data from three columns
with(hpc, {
  plot(Sub_metering_1,type="l", xaxt="n", xlab="", ylab="Energy sub metering")
  lines(x=Sub_metering_2, col="red")
  lines(x=Sub_metering_3, col="blue")
})
# add axis with abbrevations of weekdays
axis(1, at=c(1, nrow(hpc)/2, as.numeric(nrow(hpc)+1)), labels=c("Thu", "Fri", "Sat"))
# add legend
legend("topright", lty=1,lwd = 2, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),bty="n")


# plot data
plot(hpc$Voltage, type="l",xaxt="n",xlab="datetime", ylab="Voltage")
# check which point correspond to what weekday
hpc$weekday[1440] # Thu
hpc$weekday[1441] # Fri
nrow(hpc)+1 # Sat
# add axis with abbrevations of weekdays
axis(1, at=c(1, nrow(hpc)/2, as.numeric(nrow(hpc)+1)), labels=c("Thu", "Fri", "Sat"))


# plot data
plot(hpc$Global_reactive_power, type="l",xaxt="n",xlab="datetime", ylab="Global Reactive Power")
# check which point correspond to what weekday
hpc$weekday[1440] # Thu
hpc$weekday[1441] # Fri
nrow(hpc)+1 # Sat
# add axis with abbrevations of weekdays
axis(1, at=c(1, nrow(hpc)/2, as.numeric(nrow(hpc)+1)), labels=c("Thu", "Fri", "Sat"))


## create plot from local graphic device to the file with png format with name plot2
dev.copy(png,file="plot4.png",width=480,height=480)
dev.off()

