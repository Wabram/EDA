# read hpc file 
hpc <- read.csv("H:/Projects/Courses/R/EDA/ExploratoryDataAnalysis/project_1/hpc.txt", sep="")
# make column with weekdays names
hpc$weekday<-weekdays(as.Date(hpc$Date,"%d/%m/%Y"),abbreviate = T) # Thu, Fri

# plot data
plot(hpc$Global_active_power, type="l",xaxt="n",xlab="", ylab="Global Active Power (kilowatts)")
# check which point correspond to what weekday
hpc$weekday[1440] # Thu
hpc$weekday[1441] # Fri
nrow(hpc)+1 # Sat
# add axis with abbrevations of weekdays
axis(1, at=c(1, nrow(hpc)/2, as.numeric(nrow(hpc)+1)), labels=c("Thu", "Fri", "Sat"))

## create plot from local graphic device to the file with png format with name plot2
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()