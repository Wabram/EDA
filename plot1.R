hpc <- read.csv("H:/Projects/Courses/R/EDA/project_1/household_power_consumption.txt", sep=";")
hpc<-hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007",]
write.table(hpc,file="hpc.txt")
hpc <- read.csv("H:/Projects/Courses/R/EDA/ExploratoryDataAnalysis/hpc.txt", sep="")
str(hpc)

hist(hpc$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()
