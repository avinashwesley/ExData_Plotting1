# Plot 2
# Read data
#make sure the data file is in the same folder as the r source file
setwd("C:/Users/h122459/Desktop/Research/Coursera/Course4PrinciplesOfAnalyticGraphics/Assignment1")
initial = read.table("household_power_consumption.txt", nrows=10, sep=";",header=TRUE,na.strings="?")
classes = sapply(initial,class)
setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )
classes[1:2]=c("myDate","character")
tabAll = read.table("household_power_consumption.txt",colClasses = classes, sep=";",header=TRUE,na.strings="?")
df = subset(tabAll,(Date>="2007-02-01" & Date<="2007-02-02"))
df$Time=as.POSIXct(paste(df$Date, df$Time), format="%Y-%m-%d %H:%M:%S")


plot(df$Time,df$Global_active_power,type="n",xlab='',ylab = "Global Active Power (kilowatts)")
lines(df$Time,df$Global_active_power)


dev.copy(png, file="plot2.png")
dev.off()
