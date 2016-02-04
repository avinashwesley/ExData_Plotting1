# Plot 1
# Read data
setwd("C:/Users/h122459/Desktop/Research/Coursera/Course4PrinciplesOfAnalyticGraphics/Assignment1")
initial = read.table("household_power_consumption.txt", nrows=10, sep=";",header=TRUE,na.strings="?")
classes = sapply(initial,class)
setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )
setAs("character","myTime", function(from) strptime(from, format="%H:%M:%S") )
classes[1:2]=c("myDate","myTime")
tabAll = read.table("household_power_consumption.txt",colClasses = classes, sep=";",header=TRUE,na.strings="?")
df = subset(tabAll,(Date>="2007-02-01" & Date<="2007-02-02"))


hist(df$Global_active_power,col="red",xlab="Global Active Power (kilowatts)", main = "Global Active Power")

dev.copy(png, file="plot1.png")
dev.off()

