# download large data file to your working directory, unzip them, and read as csv file to the hpc0 object 
## https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
hpc0 <- read.csv("H:/Projects/Courses/R/EDA/ExploratoryDataAnalysis/project_1/household_power_consumption.txt", sep=";")
## data interesting for EDA project 1 
hpc0<-hpc0[hpc0$Date=="1/2/2007" | hpc0$Date=="2/2/2007",]
## write hpc object as a txt file in your working directory for speed up future loading interesting data for EDA project 1
write.table(hpc,file="hpc.txt") # will change factor to numeric in columns with numeric variables
## change structure of third column hpc$Global_active_power from factor to numeric
hpc0$Global_active_power<-as.numeric(paste(hpc0$Global_active_power))


# or
## read hpc.txt file according to the below code
hpc <- read.csv("H:/Projects/Courses/R/EDA/ExploratoryDataAnalysis/hpc.txt", sep="")
## display structure of hpc object
str(hpc)

## generate histogran in local graphic device
hist(hpc$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")

## create histogran from local graphic device to the file with png format with name plot2
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()

